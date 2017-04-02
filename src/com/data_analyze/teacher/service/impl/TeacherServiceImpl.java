package com.data_analyze.teacher.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.teacher.dao.TeacherMapper;
import com.data_analyze.teacher.dao.TeacherSysMapper;
import com.data_analyze.teacher.entity.Teacher;
import com.data_analyze.teacher.service.TeacherService;
import com.data_analyze.utils.DateTimeHelper;
import org.apache.ibatis.annotations.Param;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

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
import java.util.List;

/**
 * Created by liujie on 2017/3/17.
 */

@Service("teacherService")

public class TeacherServiceImpl implements TeacherService {

    @Autowired
    private TeacherMapper teacherMapper;

    @Override
    public int insert(Teacher entity) throws Exception {
        return 0;
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

            Teacher teacher = null;

            for (int j = 1 ; j < 100 ; j++)
            {

                Row row = sheet.getRow(j);

                teacher  = new Teacher();

//                System.out.println(row.getCell(1).getStringCellValue()+" "+row.getCell(2).getStringCellValue()+" "+row.getCell(3).getStringCellValue());

//                //salary
                teacher.setSalary_id(row.getCell(1).getStringCellValue().trim());
//                //name
                teacher.setName(row.getCell(2).getStringCellValue().trim());
//
                teacher.setGender(row.getCell(3).getStringCellValue().equals("男"));

//                insert(teacher);

                System.out.println(teacher);

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

    @Override
    public Teacher selectDynamic(@Param("tableName") String table, @Param("items") Teacher entity) {
        return null;
    }

    public void importTeacher(File excel , String fileType){

        try {

            FileInputStream fileInputStream = new FileInputStream(excel);

            boolean is03Excel = fileType.equals(".xls");

            //兼容03,07的格式
            Workbook workbook = is03Excel ? new HSSFWorkbook(fileInputStream) : new XSSFWorkbook(fileInputStream);

            Sheet sheet = workbook.getSheetAt(0);

            Teacher teacher = null;

            for (int j = 1 ; j < sheet.getPhysicalNumberOfRows() ; j++)
            {

                Row row = sheet.getRow(j);

                teacher  = new Teacher();

//                System.out.println(row.getCell(1).getStringCellValue()+" "+row.getCell(2).getStringCellValue()+" "+row.getCell(3).getStringCellValue());

//                //salary
                teacher.setSalary_id(row.getCell(1).getStringCellValue().trim());
//                //name
                teacher.setName(row.getCell(2).getStringCellValue().trim());
//
                teacher.setGender(row.getCell(3).getStringCellValue().trim().equals("男"));

                teacher.setOffice(row.getCell(4).getStringCellValue().trim());

                teacher.setBirthday(DateTimeHelper.ordinaryStringToTimestamp(row.getCell(5).getStringCellValue().trim()));

                teacher.setRace(row.getCell(6).getStringCellValue().trim());

                teacher.setIdentity(row.getCell(7).getStringCellValue().trim());

                teacher.setHometown(row.getCell(8).getStringCellValue().trim());

                teacher.setPolitics_status(row.getCell(9).getStringCellValue().trim());

//                System.out.println();

                teacher.setJoin_time(DateTimeHelper.ordinaryStringToTimestamp(row.getCell(10).getStringCellValue().trim()));

                teacher.setJoin_school_time(DateTimeHelper.ordinaryStringToTimestamp(row.getCell(11).getStringCellValue().trim()));

                teacher.setJoin_job_time(DateTimeHelper.ordinaryStringToTimestamp(row.getCell(12).getStringCellValue().trim()));

                teacher.setJob(row.getCell(13).getStringCellValue().trim());

                teacher.setJob_status(row.getCell(14).getStringCellValue().trim());

                teacher.setAuthorized(row.getCell(15).getStringCellValue().trim().equals("正式在编"));

                teacher.setOn_status(row.getCell(16).getStringCellValue().trim());

                teacher.setDepartment(row.getCell(17).getStringCellValue().trim());

                teacher.setJoin_reason(row.getCell(18).getStringCellValue().trim());

                teacher.setAttendance_category(row.getCell(19).getStringCellValue().trim());

                teacher.setJob_level(row.getCell(20).getStringCellValue().trim());

                teacher.setAdministrative_post(row.getCell(21).getStringCellValue().trim());

                teacher.setProf_and_tech_post(row.getCell(22).getStringCellValue().trim());

                teacher.setSpecial_experience(row.getCell(23).getStringCellValue().trim());

                teacher.setLast_edu_background(row.getCell(24).getStringCellValue().trim());

                teacher.setDegree(row.getCell(25).getStringCellValue().trim());

                teacher.setDegree_time(DateTimeHelper.ordinaryStringToTimestamp(row.getCell(26).getStringCellValue().trim()));

                teacher.setLast_degree(row.getCell(27).getStringCellValue().trim());

                teacher.setSubject(row.getCell(28).getStringCellValue().trim());

                teacher.setRemark(row.getCell(29).getStringCellValue().trim());

                teacher.setMentor_type(row.getCell(30).getStringCellValue().trim());

                teacher.setMajor(row.getCell(31).getStringCellValue().trim());

                insert(teacher);

                System.out.println(teacher);

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

    @Override
    public String getSalaryIdFromName(String name) {
        return teacherMapper.getSalaryIdFromName(name);
    }

    @Override
    public void hello() {
        System.out.println("hello");
    }

    @Override
    public int insertDynamic(@Param("teach") Teacher entity, @Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public Page<Teacher> selectPageListDynamic(@Param("pages") Page<Teacher> page, @Param("tableName") String tableName) {
        return null;
    }

    @Override
    public int selectPageCountDynamic(@Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public int deleteDynamic(@Param("tablesName") String tableName, @Param("items") Teacher entity) {
        return 0;
    }

    @Override
    public int updateDynamic(@Param("tableName") String tableName, @Param("items") Teacher entity) {
        return 0;
    }
}
