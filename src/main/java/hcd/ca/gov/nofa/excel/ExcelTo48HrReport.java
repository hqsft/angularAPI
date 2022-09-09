/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.excel;

import static hcd.ca.gov.nofa.excel.UpdateDataFromExcel.DB_URL;
import static hcd.ca.gov.nofa.excel.UpdateDataFromExcel.PASS;
import static hcd.ca.gov.nofa.excel.UpdateDataFromExcel.USER;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import static java.nio.file.Files.list;
import static java.rmi.Naming.list;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Iterator;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author santo
 */
public class ExcelTo48HrReport {

    static final String DB_URL = "jdbc:mysql://localhost:3306/supernofa_v3";
    static final String USER = "santosh";
    static final String PASS = "sarkar@1234";

    public static void main(String[] args) throws FileNotFoundException, IOException {
        String excelFilePath = "48Hr_Report.xlsx";
        XSSFRow row;

        try {

            FileInputStream file = new FileInputStream(new File(excelFilePath));
            XSSFWorkbook workbook = new XSSFWorkbook(file);
            XSSFSheet sheet = workbook.getSheetAt(0);
            Iterator<Row> rowIterator = sheet.iterator();
            rowIterator.next();
            rowIterator.next();
            while (rowIterator.hasNext()) {
                row = (XSSFRow) rowIterator.next();
                Iterator< Cell> cellIterator = row.cellIterator();

                while (cellIterator.hasNext()) {
                    Cell cell = cellIterator.next();
                    cell.setCellType(CellType.STRING);
                    switch (cell.getColumnIndex()) {
                        case 12:
                            System.out.print(
                                    cell.getStringCellValue() + " \t\t");
                            break;
                        /*
                        case 1:
                            System.out.print(
                                    cell.getStringCellValue() + " \t\t");
                            break;
                        case 2:
                            System.out.print(
                                    cell.getStringCellValue() + " \t\t");
                            break;
                        case 3:
                            System.out.print(
                                    cell.getStringCellValue() + " \t\t");
                            break;
                        case 4:
                            System.out.print( cell.getStringCellValue() + " \t\t");
                            break;
                        case 5:
                            System.out.print( cell.getStringCellValue() + " \t\t");
                            break;
                        case 6:
                            System.out.print( cell.getStringCellValue() + " \t\t");
                            break; 
                        case 7:
                            System.out.print( cell.getStringCellValue() + " \t\t");
                            break;
                        case 8:
                            System.out.print( cell.getStringCellValue() + " \t\t");
                            break;
                        case 9:
                            System.out.print( cell.getStringCellValue() + " \t\t");
                            break;
                        case 10:
                            System.out.print( cell.getStringCellValue() + " \t\t");
                            break;
                        case 11:
                            System.out.print( cell.getStringCellValue() + " \t\t");
                            break;
                        case 12:
                            System.out.print( cell.getStringCellValue() + " \t\t");
                            break;
                        case 13:
                            System.out.print( cell.getStringCellValue() + " \t\t");
                            break;
                        case 14:
                            System.out.print( cell.getStringCellValue() + " \t\t");
                            break;
                        case 15:
                            System.out.print( cell.getStringCellValue() + " \t\t \n");
                            break;
                            
                            
                        */    
                            
                    }
                }
            file.close();
        
    }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }


    
}}
