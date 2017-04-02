package com.data_analyze.teach.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.teach.dao.TeachMapper;
import com.data_analyze.teach.dao.TeachSysMapper;
import com.data_analyze.teach.entity.Teach;
import com.data_analyze.teach.service.TeachService;
import com.data_analyze.teacher.dao.TeacherMapper;
import org.apache.ibatis.annotations.Param;
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
import java.util.List;

/**
 * Created by jiacheng on 17-3-19.
 */
@Service("teachService")
public class TeachServiceImpl implements TeachService {
    @Override
    public int insert(Teach entity) throws Exception {
        return 0;
    }

    @Override
    public Teach selectDynamic(@Param("tableName") String table, @Param("items") Teach entity) {
        return null;
    }

    @Override
    public void importTeach(File excel, String fileType, int year) {

    }

    @Override
    public int update(Teach entity) throws Exception {
        return 0;
    }

    @Override
    public int delete(Teach entity) throws Exception {
        return 0;
    }

    @Override
    public Teach select(Teach entity) throws Exception {
        return null;
    }

    @Override
    public Page<Teach> selectPage(Page<Teach> page) {
        return null;
    }

    @Override
    public Page<Teach> selectPageUseDyc(Page<Teach> page) {
        return null;
    }

    @Override
    public int insertDynamic(@Param("teach") Teach entity, @Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public Page<Teach> selectPageListDynamic(@Param("pages") Page<Teach> page, @Param("tableName") String tableName) {
        return null;
    }

    @Override
    public int selectPageCountDynamic(@Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public int deleteDynamic(@Param("tablesName") String tableName, @Param("items") Teach entity) {
        return 0;
    }

    @Override
    public int updateDynamic(@Param("tableName") String tableName, @Param("items") Teach entity) {
        return 0;
    }

    //    @Override
//    public int insert(Teach entity) throws Exception {
//        return 0;
//    }
//
//    @Override
//    public int update(Teach entity) throws Exception {
//        return 0;
//    }
//
//    @Override
//    public int delete(Teach entity) throws Exception {
//        return 0;
//    }
//
//    @Override
//    public Teach select(Teach entity) throws Exception {
//        return null;
//    }
//
//    @Override
//    public Page<Teach> selectPage(Page<Teach> page) {
//        return null;
//    }
//
//    @Override
//    public Page<Teach> selectPageUseDyc(Page<Teach> page) {
//        return null;
//    }

//    @Override
//    public void importTeach(File excel, String fileType, int year) {
//        try {
//            FileInputStream fileInputStream = new FileInputStream(excel);
//            boolean is03Excel = fileType.equals("xls");
//            Workbook workbook = is03Excel ? new HSSFWorkbook(fileInputStream) : new XSSFWorkbook(fileInputStream);
//            Sheet sheet = workbook.getSheetAt(0);
//            Teach teach = new Teach();
//            for(int j=1; j<sheet.getPhysicalNumberOfRows(); ++j){
//                Row row = sheet.getRow(j);
//                String name = row.getCell(0).getStringCellValue().trim();
//                String salary_id = teacherMapper.getSalaryIdFromName(name);
//                if(salary_id == null){
//                    continue;
//                }
//                System.out.println(name+" salaryId"+salary_id);
//                for(int i = 0; i<20; ++i){
//                    if(row.getCell(i)!=null) {
//                        row.getCell(i).setCellType(Cell.CELL_TYPE_STRING);
//                    }
//                }
//                teach.setSalary_id(salary_id);
//                teach.setName(name);
//                String rank = row.getCell(1)==null?null:row.getCell(1).getStringCellValue().trim();
//                String duty = row.getCell(2)==null?null:row.getCell(2).getStringCellValue().trim();
//                String therory_fs = row.getCell(4)==null?null:row.getCell(4).getStringCellValue().trim();
//                String profession_fs = row.getCell(5)==null?null:row.getCell(5).getStringCellValue().trim();
//                String ready_fs = row.getCell(6)==null?null:row.getCell(6).getStringCellValue().trim();
//                String guide_fs = row.getCell(7)==null?null:row.getCell(7).getStringCellValue().trim();
//                String graduation_fs = row.getCell(8)==null?null:row.getCell(8).getStringCellValue().trim();
//                String first_sum = row.getCell(9)==null?null:row.getCell(9).getStringCellValue().trim();
//                String theory_ss = row.getCell(10)==null?null:row.getCell(10).getStringCellValue().trim();
//                String profession_ss = row.getCell(11)==null?null:row.getCell(11).getStringCellValue().trim();
//                String ready_ss = row.getCell(12)==null?null:row.getCell(12).getStringCellValue().trim();
//                String guide_ss = row.getCell(13)==null?null:row.getCell(13).getStringCellValue().trim();
//                String graduation_ss = row.getCell(14)==null?null:row.getCell(14).getStringCellValue().trim();
//                String second_sum = row.getCell(15)==null?null:row.getCell(15).getStringCellValue().trim();
//                String remark_job = row.getCell(16)==null?null:row.getCell(16).getStringCellValue().trim();
//                String year_sum = row.getCell(17)==null?null:row.getCell(17).getStringCellValue().trim();
//                String seconde_etc = row.getCell(18)==null?null:row.getCell(18).getStringCellValue().trim();
//                String college_workload = row.getCell(19)==null?null:row.getCell(19).getStringCellValue().trim();
//                teach.setRank(rank);
//                teach.setDuty(duty);
//                teach.setTheory_fs(therory_fs==null?null:Float.valueOf(therory_fs));
//                teach.setProfession_fs(profession_fs==null?null:Float.valueOf(profession_fs));
//                teach.setReady_fs(ready_fs==null?null:Float.valueOf(ready_fs));
//                teach.setGuide_fs(guide_fs==null?null:Float.valueOf(guide_fs));
//                teach.setGraduation_fs(graduation_fs==null?null:Float.valueOf(graduation_fs));
//                teach.setFirst_sum(first_sum==null?null:Float.valueOf(first_sum));
//                teach.setTheory_ss(theory_ss==null?null:Float.valueOf(theory_ss));
//                teach.setProfession_ss(profession_ss==null?null:Float.valueOf(profession_ss));
//                teach.setReady_ss(ready_ss==null?null:Float.valueOf(ready_ss));
//                teach.setGuide_ss(guide_ss==null?null:Float.valueOf(guide_ss));
//                teach.setGraduation_ss(graduation_ss==null?null:Float.valueOf(graduation_ss));
//                teach.setSecond_sum(second_sum==null?null:Float.valueOf(second_sum));
//                teach.setRemark_job(remark_job);
//                teach.setYear_sum(year_sum==null?null:Float.valueOf(year_sum));
//                teach.setSecond_etc(seconde_etc==null?null:Float.valueOf(seconde_etc));
//                teach.setCollege_workload(college_workload==null?null:Float.valueOf(college_workload));
//
//                System.out.println(teach);
//                if (year == 2015){
//                    teachMapper.insert2015(teach);
//                } else {
//                    teachMapper.insert2016(teach);
//                }
//            }
//            System.out.println(year + "ok");
//        } catch (FileNotFoundException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }




}
