/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.excel;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author santo
 */
public class Insert48HrReport {
    
    static final String DB_URL = "jdbc:mysql://localhost:3306/supernofa_v3";
    static final String USER = "santosh";
    static final String PASS = "sarkar@1234";
    
    public static void main(String[] args) {
        HashMap<String, String> strmap = new HashMap<String, String>();
        String excelFilePath = "48Hr_Report.xlsx"; 
        int batchSize = 200; 
        Connection connection = null;
        
        try {
            long start = System.currentTimeMillis();             
            FileInputStream inputStream = new FileInputStream(excelFilePath); 
            Workbook workbook = new XSSFWorkbook(inputStream); 
            Sheet firstSheet = workbook.getSheetAt(0);
            
            String sheetName = "";            
            sheetName = firstSheet.getSheetName();
            System.out.println("ExcelSheet Name is: " + sheetName);
            Iterator<Row> rowIterator = firstSheet.iterator();
            
            connection = DriverManager.getConnection(DB_URL, USER, PASS);
            connection.setAutoCommit(false);
            
            String sql = "INSERT INTO 48hr_report (project_name,project_address,project_city,project_county,development_type,"
                    + "sponsor_1,entity_type_1,sponsor_2,entity_type_2,lead_service_provider_name,community_based_developer) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);    
             
            int count = 0;
            rowIterator.next();
            rowIterator.next(); // skip the header row
            while (rowIterator.hasNext()) {
                Row nextRow = rowIterator.next();
                Iterator<Cell> cellIterator = nextRow.cellIterator();
 
                while (cellIterator.hasNext()) {
                    Cell nextCell = cellIterator.next();
 
                    int columnIndex = nextCell.getColumnIndex();
                    
                    switch (columnIndex) {
                    case 1:
                        String project_name = nextCell.getStringCellValue();
                        statement.setString(1, project_name);
                        System.out.println("project_name: "+project_name);
                        break;
                    case 2:
                        String project_address = nextCell.getStringCellValue();
                        statement.setString(2, project_address);
                        System.out.println("project_address: "+project_address);
                        break;
                    case 3:
                        String project_city = nextCell.getStringCellValue();
                        statement.setString(3, project_city);
                        System.out.println("project_city: "+project_city);
                        break;
                    case 4:
                        String project_county = nextCell.getStringCellValue();
                        statement.setString(4, project_county);
                        System.out.println("project_county: "+project_county);
                        break;
                    case 5:
                        String development_type = nextCell.getStringCellValue();
                        statement.setString(5, development_type);
                        System.out.println("development_type: "+development_type);
                        break;    
                    case 6:
                        String sponsor_1 = nextCell.getStringCellValue();
                        statement.setString(6, sponsor_1);
                        break;
                    case 7:
                        String entity_type_1 = nextCell.getStringCellValue();
                        statement.setString(7, entity_type_1);
                        break;
                    case 8:
                        String sponsor_2 = nextCell.getStringCellValue();
                        statement.setString(8, sponsor_2);
                        break;
                    case 9:
                        String entity_type_2 = nextCell.getStringCellValue();
                        statement.setString(9, entity_type_2);
                        break;    
                    case 10:
                        String lead_service_provider_name = nextCell.getStringCellValue();
                        statement.setString(10, lead_service_provider_name);
                        break;
                    case 11:
                        String community_based_developer = nextCell.getStringCellValue();
                        statement.setString(11, community_based_developer);
                        break; 
                    
                    /*    
                    case 12:
                        String emerging_developer = nextCell.getStringCellValue();
                        statement.setString(12, emerging_developer);
                        break;  
                    case 13:
                        String tribal = nextCell.getStringCellValue();
                        statement.setString(13, tribal);
                        break;
                    
                    case 14:
                        String non_tax_credit = nextCell.getStringCellValue();
                        statement.setString(14, non_tax_credit);
                        break;
                    case 15:
                        String tax_credits = nextCell.getStringCellValue();
                        statement.setString(15, tax_credits);
                        break;
                    */
                    }
                    
 
                }
                
                 statement.executeUpdate(); // execute insert statement\
                 /*
                statement.addBatch();
                 
                if (count % batchSize == 0) {
                    statement.executeBatch();
                }          
                */
 
            }
 
            workbook.close();
             
            // execute the remaining queries
           // statement.executeBatch();
  
            connection.commit();
            connection.close();
             
            long end = System.currentTimeMillis();
            System.out.printf("Import done in %d ms\n", (end - start));
            
            
        } catch (IOException ex1) {
            System.out.println("Error reading file");
            ex1.printStackTrace();
        } catch (SQLException ex2) {
            System.out.println("Database error");
            ex2.printStackTrace();
        }
 
    }
    
}
