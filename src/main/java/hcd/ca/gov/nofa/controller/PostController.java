/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.controller;

import hcd.ca.gov.nofa.entities.Post;
import hcd.ca.gov.nofa.entities.PostFiles;
import hcd.ca.gov.nofa.payload.response.ResponseHandler;
import hcd.ca.gov.nofa.repository.PostFilesRepository;
import hcd.ca.gov.nofa.repository.PostRepository;
import hcd.ca.gov.nofa.service.FileUploadUtil;
import hcd.ca.gov.nofa.service.PostService;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

/**
 *
 * @author santo
 */
@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/post")
public class PostController {

    @Autowired
    PostRepository postRepository;

    @Autowired
    private PostService service;

    @Autowired
    private PostFilesRepository postFilesRepository;

    @Value("${FILE_PATH}")
    private String EXTERNAL_FILE_PATH;

    /*
    @GetMapping("")
    public List<Post> retrieveAllStudents() {
        return postRepository.findAll();
    }
     */
    // Get
    @GetMapping(value = "")
    public ResponseEntity<Object> Get() {
        try {
            List<Post> result = postRepository.findAll();
            return ResponseHandler.generateResponse("Successfully retrieved data!", HttpStatus.OK, result);
        } catch (Exception e) {
            return ResponseHandler.generateResponse(e.getMessage(), HttpStatus.MULTI_STATUS, null);
        }
    }

    //Create Post
    @PostMapping("")
    public ResponseEntity<Object> createPost(@RequestBody Post post) {
        try {
            Post savedPost = postRepository.save(post);
            return ResponseHandler.generateResponse("Successfully saved data!", HttpStatus.OK, savedPost);
        } catch (Exception e) {
            return ResponseHandler.generateResponse(e.getMessage(), HttpStatus.MULTI_STATUS, null);
        }

    }

    @GetMapping("/{id}")
    public ResponseEntity<Post> getPostById(@PathVariable("id") long id) {
        Optional<Post> postData = postRepository.findById(id);
        if (postData.isPresent()) {
            return new ResponseEntity<>(postData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    /*
    @DeleteMapping("/{id}")
    public void deletePost(@PathVariable long id) {
        postRepository.deleteById(id);
    }
     */
    // Delete
    @DeleteMapping(value = "/{id}")
    public ResponseEntity<Object> Delete(@PathVariable long id) {
        try {
            service.delete(id);
            return ResponseHandler.generateResponse(id + " suceessfully deleted!", HttpStatus.OK, id);
        } catch (Exception e) {
            return ResponseHandler.generateResponse(e.getMessage(), HttpStatus.MULTI_STATUS, null);
        }
    }

    //Update Post
    @PutMapping("/{id}")
    public ResponseEntity<Object> updateStudent(@RequestBody Post post, @PathVariable long id) {

        Optional<Post> postOptional = postRepository.findById(id);
        if (postOptional.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        post.setId(id);
        postRepository.save(post);
        //return ResponseEntity.noContent().build();
        return new ResponseEntity<>(HttpStatus.ACCEPTED);
    }

    // Save Post With File
    @PostMapping("/save")
    public ResponseEntity<Object> savePost(Post post,
            @RequestParam(value = "files", required = false) MultipartFile multipartFile) throws IOException {

        try {
            String fileName = "";
            if (multipartFile != null) {
                fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
                System.out.println(fileName);
                post.setFile(fileName);
            }
            Post savedPost = postRepository.save(post);

            if (multipartFile != null) {
                PostFiles postFile = new PostFiles();
                postFile.setPost(post);
                postFile.setFileName(fileName);
                PostFiles savePostFiles = postFilesRepository.save(postFile);

                String uploadDir = EXTERNAL_FILE_PATH + "files/" + savedPost.getId();
                FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
            }

            return ResponseHandler.generateResponse("Successfully saved data!", HttpStatus.OK, savedPost);

        } catch (Exception e) {
            return ResponseHandler.generateResponse(e.getMessage(), HttpStatus.MULTI_STATUS, null);
        }
    }

    //Update Post with file
    @PostMapping("/update/{id}")
    ResponseEntity<Object> updatePost(
            Post post,
            @PathVariable long id,
            @RequestParam(value = "files", required = false) MultipartFile multipartFile
    ) throws IOException {

        System.out.println("Inside Update");

        Optional<Post> postOptional = postRepository.findById(id);
        if (postOptional.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        try {
            System.out.println("Inside Try");
            post.setId(id);

            PostFiles postFile = new PostFiles();

            String fileName = "";
            if (multipartFile != null) {
                fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
                System.out.println(fileName);
                post.setFile(fileName);

            }
            Post savedPost = postRepository.save(post);

            if (multipartFile != null) {
                postFile.setPost(post);
                postFile.setId(savedPost.getId());
                postFile.setFileName(fileName);
                PostFiles savePostFiles = postFilesRepository.save(postFile);

                String uploadDir = EXTERNAL_FILE_PATH + "files/" + savedPost.getId();
                FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
            }

            return ResponseHandler.generateResponse("Successfully Update data!", HttpStatus.OK, savedPost);
        } catch (Exception e) {
            System.out.println("Inside Catch");
            return ResponseHandler.generateResponse(e.getMessage(), HttpStatus.MULTI_STATUS, null);
        }

    }

    /* DOWNLOAD FILES */
    @RequestMapping("/file/{id}/{fileName:.+}")
    public void downloadFiles(HttpServletRequest request, HttpServletResponse response,
            @PathVariable("id") String id,
            @PathVariable("fileName") String fileName) throws IOException {

        File file = new File(EXTERNAL_FILE_PATH + "files/" + id + "/" + fileName);
        System.out.println("File Path : " + file);
        if (file.exists()) {

            //get the mimetype
            String mimeType = URLConnection.guessContentTypeFromName(file.getName());
            if (mimeType == null) {
                //unknown mimetype so set the mimetype to application/octet-stream
                mimeType = "application/octet-stream";
            }

            response.setContentType(mimeType);

            response.setHeader("Content-Disposition", String.format("inline; filename=\"" + file.getName() + "\""));

            response.setContentLength((int) file.length());

            InputStream inputStream = new BufferedInputStream(new FileInputStream(file));

            FileCopyUtils.copy(inputStream, response.getOutputStream());

        }
    }

    @GetMapping("post_files")
    public List<PostFiles> retrieveAllPostFiles() {
        return postFilesRepository.findAll();
    }

}
