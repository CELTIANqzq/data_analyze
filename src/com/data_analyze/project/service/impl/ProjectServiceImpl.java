package com.data_analyze.project.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.project.dao.ProjectMapper;
import com.data_analyze.project.dao.ProjectSysMapper;
import com.data_analyze.project.entity.Project;
import com.data_analyze.project.service.ProjectService;
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
import java.util.Map;

/**
 * Created by jiacheng on 17-3-19.
 */
@Service("projectService")
public class ProjectServiceImpl implements ProjectService {
    @Autowired
    private TeacherMapper teacherMapper;

    @Autowired
    private ProjectMapper projectMapper;

    @Autowired
    private ProjectSysMapper projectSysMapper;

    @Override
    public int insert(Project entity) throws Exception {
        return 0;
    }

    @Override
    public int update(Project entity) throws Exception {
        return 0;
    }

    @Override
    public void importProject(File excel, String fileType, int year) {
        try {
            FileInputStream fileInputStream = new FileInputStream(excel);
            boolean is03Excel = fileType.equals("xls");
            Workbook workbook = is03Excel ? new HSSFWorkbook(fileInputStream) : new XSSFWorkbook(fileInputStream);
            Sheet sheet = workbook.getSheetAt(0);
            Project project = new Project();
            DataFormatter formatter = new DataFormatter();
            for(int j=1; j<sheet.getPhysicalNumberOfRows(); ++j){
                Row row = sheet.getRow(j);
                if(row == null) {
                    break;
                }
                Cell cellName = row.getCell(1);
                Cell cellBugdet = row.getCell(2);
                Cell cellType = row.getCell(3);

                String name = formatter.formatCellValue(cellName);
                String budget = formatter.formatCellValue(cellBugdet);
                String type = formatter.formatCellValue(cellType);

                String salaryId = teacherMapper.getSalaryIdFromName(name);
                if(salaryId == null) {
                    continue;
                }

                project.setSalary_id(salaryId);
                project.setName(name);
                project.setType((type==null||"".equals(type))?null:("0".equals(type)?Boolean.FALSE:Boolean.TRUE));
                project.setBudget_in_acc((budget==null||"".equals(budget))?0:Float.valueOf(budget));

                System.out.println(project);
                projectSysMapper.insertDynamic(project, "projects"+year);
            }
            System.out.println(year + "ok");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public int delete(Project entity) throws Exception {
        return 0;
    }

    @Override
    public Project select(Project entity) throws Exception {
        return null;
    }

    @Override
    public Page<Project> selectPage(Page<Project> page) {
        return null;
    }

    @Override
    public Page<Project> selectPageUseDyc(Page<Project> page) {
        return null;
    }

    @Override
    public int insertDynamic(@Param("teach") Project entity, @Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public Page<Project> selectPageListDynamic(@Param("pages") Page<Project> page, @Param("tableName") String tableName) {
        return null;
    }

    @Override
    public int selectPageCountDynamic(@Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public int deleteDynamic(@Param("tablesName") String tableName, @Param("items") Project entity) {
        return 0;
    }

    @Override
    public Project selectDynamic(@Param("tableName") String table, @Param("items") Project entity) {
        return null;
    }

    @Override
    public int updateDynamic(@Param("tableName") String tableName, @Param("items") Project entity) {
        return 0;
    }

    @Override
    public Map<String, Float> getAveProjectMoneyData(String year) {
        return null;
    }

    @Override
    public Map<String, Float> getSumProjectMoneyData(String year) {
        return null;
    }
}
