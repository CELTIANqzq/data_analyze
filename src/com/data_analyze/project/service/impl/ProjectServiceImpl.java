package com.data_analyze.project.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.project.dao.ProjectMapper;
import com.data_analyze.project.entity.Project;
import com.data_analyze.project.service.ProjectService;
import com.data_analyze.teacher.dao.TeacherMapper;
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
 * Created by jiacheng on 17-3-19.
 */
@Service("projectService")
public class ProjectServiceImpl implements ProjectService {
    @Autowired
    private TeacherMapper teacherMapper;

    @Autowired
    private ProjectMapper projectMapper;

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
            for(int j=1; j<sheet.getPhysicalNumberOfRows(); ++j){
                Row row = sheet.getRow(j);
                String name = row.getCell(1).getStringCellValue().trim();
                String salary_id = teacherMapper.getSalaryIdFromName(name);
                if(salary_id == null){
                    continue;
                }
                System.out.println(name+" salaryId"+salary_id);
                for(int i = 0; i<=3; ++i){
                    if(row.getCell(i)!=null) {
                        row.getCell(i).setCellType(Cell.CELL_TYPE_STRING);
                    }
                }
                System.out.println("set all type");
                project.setSalary_id(salary_id);
                project.setName(name);
                String budget_in_acc = row.getCell(2).getStringCellValue();
                if(budget_in_acc == null || "".equals(budget_in_acc)){
                    continue;
                }
                project.setBudget_in_acc(Float.valueOf(budget_in_acc));
                String V_or_H = row.getCell(3).getStringCellValue();
                project.setV_or_H((V_or_H==null||"".equals(V_or_H))?null:Boolean.valueOf(V_or_H));
                if (year == 2015){
                    projectMapper.insert2015(project);
                } else {
                    projectMapper.insert2016(project);
                }
            }
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
}
