package com.data_analyze.teach.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.teach.dao.TeachMapper;
import com.data_analyze.teach.dao.TeachSysMapper;
import com.data_analyze.teach.entity.Teach;
import com.data_analyze.teach.service.TeachService;
import com.data_analyze.teacher.dao.TeacherMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
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
    @Autowired
    private TeachMapper teachMapper;

    @Autowired
    private TeacherMapper teacherMapper;

    @Autowired
    private TeachSysMapper teachSysMapper;

    @Override
    public int insert(Teach entity) throws Exception {
        return 0;
    }

    @Override
    public Teach selectDynamic(@Param("tableName") String table, @Param("items") Teach entity) {
        return null;
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

    @Override
    public void importTeach(File excel, String fileType, int year) {
        try {
            FileInputStream fileInputStream = new FileInputStream(excel);
            boolean is03Excel = fileType.equals("xls");
            Workbook workbook = is03Excel ? new HSSFWorkbook(fileInputStream) : new XSSFWorkbook(fileInputStream);
            Sheet sheet = workbook.getSheetAt(0);
            Teach teach = new Teach();
            DataFormatter formatter = new DataFormatter();
            for(int j=1; j<sheet.getPhysicalNumberOfRows(); ++j){
                Row row = sheet.getRow(j);
                if(row == null){
                    break;
                }
                String name = formatter.formatCellValue(row.getCell(0)).trim();
                String salary_id = teacherMapper.getSalaryIdFromName(name);
                if(salary_id == null){
                    continue;
                }
                System.out.println(name+" salaryId"+salary_id);
                for(int i = 0; i<20; ++i){
                    if(row.getCell(i)!=null) {
                        row.getCell(i).setCellType(Cell.CELL_TYPE_STRING);
                    }
                }
                teach.setSalary_id(salary_id);
                teach.setName(name);
                String rank = formatter.formatCellValue(row.getCell(1)).trim();
                String duty = formatter.formatCellValue(row.getCell(2)).trim();
                String therory_fs = formatter.formatCellValue(row.getCell(3)).trim();
                String profession_fs = formatter.formatCellValue(row.getCell(4)).trim();
                String ready_fs = formatter.formatCellValue(row.getCell(5)).trim();
                String guide_fs = formatter.formatCellValue(row.getCell(6)) .trim();
                String graduation_fs = formatter.formatCellValue(row.getCell(7)).trim();
                String first_sum = formatter.formatCellValue(row.getCell(8)).trim();
                String theory_ss = formatter.formatCellValue(row.getCell(9)).trim();
                String profession_ss = formatter.formatCellValue(row.getCell(10)).trim();
                String ready_ss = formatter.formatCellValue(row.getCell(11)).trim();
                String guide_ss = formatter.formatCellValue(row.getCell(12)).trim();
                String graduation_ss = formatter.formatCellValue(row.getCell(13)).trim();
                String second_sum = formatter.formatCellValue(row.getCell(14)).trim();
                String remark_job = formatter.formatCellValue(row.getCell(15)).trim();
                String year_sum = formatter.formatCellValue(row.getCell(16)).trim();
                String seconde_etc = formatter.formatCellValue(row.getCell(17)).trim();
                String college_workload = formatter.formatCellValue(row.getCell(18)).trim();
                teach.setRank(rank);
                teach.setDuty(duty);
                teach.setTheory_fs("".equals(therory_fs)?null:Float.valueOf(therory_fs));
                teach.setProfession_fs("".equals(profession_fs)?null:Float.valueOf(profession_fs));
                teach.setReady_fs("".endsWith(ready_fs)?null:Float.valueOf(ready_fs));
                teach.setGuide_fs("".equals(guide_fs)?null:Float.valueOf(guide_fs));
                teach.setGraduation_fs("".equals(graduation_fs)?null:Float.valueOf(graduation_fs));
                teach.setFirst_sum("".equals(first_sum)?null:Float.valueOf(first_sum));
                teach.setTheory_ss("".equals(theory_ss)?null:Float.valueOf(theory_ss));
                teach.setProfession_ss("".equals(profession_ss)?null:Float.valueOf(profession_ss));
                teach.setReady_ss("".equals(ready_ss)?null:Float.valueOf(ready_ss));
                teach.setGuide_ss("".equals(guide_ss)?null:Float.valueOf(guide_ss));
                teach.setGraduation_ss("".equals(graduation_ss)?null:Float.valueOf(graduation_ss));
                teach.setSecond_sum("".equals(second_sum)?null:Float.valueOf(second_sum));
                teach.setRemark_job(remark_job);
                teach.setYear_sum("".equals(year_sum)?null:Float.valueOf(year_sum));
                teach.setSecond_etc("".equals(seconde_etc)?null:Float.valueOf(seconde_etc));
                teach.setCollege_workload("".equals(college_workload)?null:Float.valueOf(college_workload));

                System.out.println(teach);
                teachSysMapper.insertDynamic(teach, "teach"+year);
            }
            System.out.println(year + "ok");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }




}
