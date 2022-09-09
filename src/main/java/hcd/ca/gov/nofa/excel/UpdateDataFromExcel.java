/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.excel;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Iterator;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author santo
 */
public class UpdateDataFromExcel {

    static final String DB_URL = "jdbc:mysql://localhost:3306/supernofa";
    static final String USER = "santosh";
    static final String PASS = "sarkar@1234";

    public static void main(String[] args) {
        
        int sid=1;

        HashMap<String, Double> map = new HashMap<String, Double>();
        HashMap<String, String> strmap = new HashMap<String, String>();
        HashMap<String, Double> boolmap = new HashMap<String, Double>();
        HashMap<String, Double> blankmap = new HashMap<String, Double>();
        HashMap<String, String> chk = new HashMap<String, String>();

        System.out.println("Hello Update From ExcelSheet");

        try {
            FileInputStream file = new FileInputStream(new File("Master_AB434_Application.xlsm"));

            //Create Workbook instance holding reference to .xlsx file
            XSSFWorkbook workbook = new XSSFWorkbook(file);

            //Get first/desired sheet from the workbook
            //RaviTask: Loop for worksheets.
            //JDBC connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);

            String sheetName = "";

            for (int i = 1; i < 36; i++) {
                //System.out.println(i);
                XSSFSheet sheet = workbook.getSheetAt(i);
                sheetName = sheet.getSheetName();
                System.out.println("ExcelSheet Name is: " + sheetName);

                /*
            XSSFSheet sheet = workbook.getSheetAt(5);
            sheetName = sheet.getSheetName();
            System.out.println("ExcelSheet Name is: " + sheetName);
                 */
                Iterator<Row> rowIterator = sheet.iterator();
                while (rowIterator.hasNext()) {
                    Row row = rowIterator.next();
                    //For each row, iterate through all the columns
                    Iterator<Cell> cellIterator = row.cellIterator();

                    while (cellIterator.hasNext()) {
                        Cell cell = cellIterator.next();
                        //Check the cell type and format accordingly
                        switch (cell.getCellType()) {

                            case Cell.CELL_TYPE_NUMERIC:
//                            System.out.print('"'+cell.getAddress().toString()+'"' + "," +'"'+ cell.getNumericCellValue() +'"'+","+ "\t");

                                strmap.put(cell.getAddress().toString(), String.valueOf(cell.getNumericCellValue()));

                                break;
                            case Cell.CELL_TYPE_STRING:
//                            System.out.print('"'+cell.getAddress().toString()+'"'+ "," +'"'+ cell.getStringCellValue() + '"'+","+"\t");

                                strmap.put(cell.getAddress().toString(), cell.getStringCellValue());

                                break;
                            case Cell.CELL_TYPE_BLANK:
//                            System.out.print('"'+cell.getAddress().toString()+'"' + "," +'"'+ cell.getNumericCellValue() +'"'+","+ "\t");

                                strmap.put(cell.getAddress().toString(), String.valueOf(cell.getNumericCellValue()));

                                break;
                            case Cell.CELL_TYPE_BOOLEAN:
//                            System.out.print('"'+cell.getAddress().toString()+'"' + "," +'"'+ cell.getNumericCellValue() +'"'+","+ "\t");

                                //strmap.put(cell.getAddress().toString(), String.valueOf(cell.getNumericCellValue()));
                                strmap.put(cell.getAddress().toString(), String.valueOf(cell.getBooleanCellValue()));

                                break;

                        }

                    }

                    //System.out.println(strmap);
                    PreparedStatement stmtSelect = conn.prepareStatement("SELECT field_name,cell_name FROM excel_fields");
                    ResultSet rs = null;
                    rs = stmtSelect.executeQuery();
                    
                    /*
                    PreparedStatement stmtUpdate = conn.prepareStatement("UPDATE submissions a, submission_data b,form_fields c, tabs d, webforms e  SET b.data_value=? "
                            + "WHERE c.id=b.form_fields_id AND d.id=c.tabs_id AND e.id=d.webforms_id AND c.name=? AND b.submission_id=a.id AND a.id=1 And d.id="+i);
                    */
                    
                    PreparedStatement stmtUpdate = conn.prepareStatement("UPDATE submissions a, submission_data b,form_fields c, tabs d, webforms e  SET b.data_value=? "
                            + "WHERE b.form_fields_id=c.id AND c.tabs_id=d.id AND d.webforms_id=e.id AND b.submission_id=a.id AND c.name=? AND a.id=? And d.id=?");
                    
                    //System.out.println("field_name\t\t\t\tcell_name\t\n");
                    while (rs.next()) {
                        //System.out.print(rs.getString(1)+"\t\t\t\t"+rs.getString(2)+"\t\n");

                        stmtUpdate.setString(1, strmap.get(rs.getString(2)));
                        stmtUpdate.setString(2, rs.getString(1));
                        
                        stmtUpdate.setInt(3, sid);
                        stmtUpdate.setInt(4, i);
                        stmtUpdate.executeUpdate();
                        
                        

                    }
                }
            }  //For Loop
//              System.out.println("");

            System.out.println("records updated");
            file.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
