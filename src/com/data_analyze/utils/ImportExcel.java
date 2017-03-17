package com.data_analyze.utils;

import com.data_analyze.teacher.entity.Teacher;
import com.data_analyze.teacher.service.TeacherService;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import javax.annotation.Resource;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/**
 * Created by liujie on 2017/3/17.
 */
public class ImportExcel {




    public static void importTeacherTable(File excel , String fileType){




        try {

            FileInputStream fileInputStream = new FileInputStream(excel);

            boolean is03Excel = fileType.equals(".xls");

            //兼容03,07的格式
            Workbook workbook = is03Excel ? new HSSFWorkbook(fileInputStream) : new XSSFWorkbook(fileInputStream);

            Sheet sheet = workbook.getSheetAt(0);


//            for (int j = 0 ; j < sheet.getPhysicalNumberOfRows() ; j++)
//            {

                Row row = sheet.getRow(1);

                for (int i = 1; i < 33; i++) {

                    Cell cell = row.getCell(i);

                    System.out.print(cell.getStringCellValue().trim() +" "+ i + " ");

                }


//                System.out.println(j);
//
//            }

            workbook.close();

            fileInputStream.close();


        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }


    }


}
