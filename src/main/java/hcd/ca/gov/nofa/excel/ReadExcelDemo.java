//package com.howtodoinjava.demo.poi;
package hcd.ca.gov.nofa.excel;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Iterator;
import static org.apache.poi.hssf.usermodel.HeaderFooter.file;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ReadExcelDemo {

    static final String DB_URL = "jdbc:mysql://localhost:3306/supernofa_v2";
    static final String USER = "santosh";
    static final String PASS = "sarkar@1234";

    public static void main(String[] args) {

        HashMap<String, String> strmap = new HashMap<String, String>();

        try {

            FileInputStream file = new FileInputStream(new File("AB434_Application_Master_Version_Orig.xlsm"));

            //Create Workbook instance holding reference to .xlsx file
            XSSFWorkbook workbook = new XSSFWorkbook(file);

            //Get first/desired sheet from the workbook
//            for(int i=1;i<39;i++){
            XSSFSheet sheet = workbook.getSheetAt(4);

            String sheetName = sheet.getSheetName();
            System.out.println(sheetName + "\n");
//            }

            //JDBC connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);

            System.out.println("==========================================\n");
            //Iterate through each rows one by one
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

                            strmap.put(cell.getAddress().toString(), String.valueOf(cell.getNumericCellValue()));

                            break;
                        /*    
                        case Cell.CELL_TYPE_FORMULA:
                            System.out.println(cell.getAddress().toString() + ":"+cell.getCellFormula());
                            //Not again
                            break;
                         */
                    }

                }
//              System.out.println("");
            }
            System.out.println("end======================");
             
            int sid=2;
            PreparedStatement stmt3 = conn.prepareStatement("SELECT field_name,cell_name from excel_fields where tab_name='project_overview';");
            PreparedStatement stmt5 = conn.prepareStatement("SELECT id from form_fields where name=? and tabs_id=1;");
            PreparedStatement stmt4 = conn.prepareStatement("INSERT  INTO submission_data (data_value, form_fields_id, submission_id) values(?,?,?)");

            ResultSet rs_stmt3;
            ResultSet rs2_stmt5;
            rs_stmt3 = stmt3.executeQuery();

            while (rs_stmt3.next()) {

                stmt4.setString(1, strmap.get(rs_stmt3.getString(2)));
                stmt5.setString(1, rs_stmt3.getString(1));
                rs2_stmt5 = stmt5.executeQuery();
                rs2_stmt5.next();
//                System.out.println(rs2.getString(1));
                stmt4.setString(2, rs2_stmt5.getString(1));
                stmt4.setInt(3, sid);
////System.out.println((rs.getString(2))+"===="+strmap.get(rs.getString(2)));
////                System.out.println("The key is: " + rs.getString(1) + ",value is :" + strmap.get(rs.getString(2)));
                stmt4.executeUpdate();
//                i++;

            }

            System.out.println("inserted");

            file.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
