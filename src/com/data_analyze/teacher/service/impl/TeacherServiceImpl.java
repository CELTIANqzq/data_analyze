package com.data_analyze.teacher.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.teacher.dao.TeacherMapper;
import com.data_analyze.teacher.entity.Teacher;
import com.data_analyze.teacher.service.TeacherService;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/**
 * Created by liujie on 2017/3/17.
 */

@Service("teacherService")

public class TeacherServiceImpl implements TeacherService {

    @Autowired
    private TeacherMapper teacherMapper;

    @Override
    public int insert(Teacher entity) throws Exception {
        return teacherMapper.insert(entity);
    }

    @Override
    public int insertTeacher(Teacher teacher) {
        return 0;
    }

    @Override
    public int update(Teacher entity) throws Exception {
        return 0;
    }

    @Override
    public int delete(Teacher entity) throws Exception {
        return 0;
    }

    @Override
    public Teacher select(Teacher entity) throws Exception {
        return null;
    }

    @Override
    public Page<Teacher> selectPage(Page<Teacher> page) {
        return null;
    }

    @Override
    public Page<Teacher> selectPageUseDyc(Page<Teacher> page) {
        return null;
    }


    public void importTeacherTable(File excel , String fileType){

        try {

            FileInputStream fileInputStream = new FileInputStream(excel);

            boolean is03Excel = fileType.equals(".xls");

            //兼容03,07的格式
            Workbook workbook = is03Excel ? new HSSFWorkbook(fileInputStream) : new XSSFWorkbook(fileInputStream);

            Sheet sheet = workbook.getSheetAt(0);


            for (int j = 1 ; j < sheet.getPhysicalNumberOfRows() ; j++)
            {

            Teacher teacher = new Teacher();

            Row row = sheet.getRow(j);

            for (int i = 1; i < 33; i++) {

                Cell cell = row.getCell(i);


                if (i == 1){

                    //salary
                    teacher.setSalary_id(cell.getStringCellValue().trim());

                }


                if (i == 2){

                    //name
                    teacher.setName(cell.getStringCellValue().trim());

                }

                if (i == 3){

                   teacher.setGender(cell.getStringCellValue().trim().equals("男"));

                }

//                System.out.print(cell.getStringCellValue().trim() +" "+ i + " ");

            }

                insert(teacher);


                System.out.println(j);

            }

            workbook.close();

            fileInputStream.close();


        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }


    }
}
