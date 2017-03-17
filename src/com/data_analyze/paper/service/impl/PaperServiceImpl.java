package com.data_analyze.paper.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.paper.dao.PaperMapper;
import com.data_analyze.paper.entity.Paper;
import com.data_analyze.paper.service.PaperService;
import com.data_analyze.teacher.dao.TeacherMapper;
import com.data_analyze.teacher.entity.Teacher;
import com.data_analyze.teacher.service.TeacherService;
import com.data_analyze.utils.DateTimeHelper;
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

/**
 * Created by liujie on 2017/3/17.
 */

@Service("paperService")
public class PaperServiceImpl implements PaperService {


    @Autowired
    private PaperMapper paperMapper;

    @Autowired
    private TeacherMapper teacherMapper;


    @Override
    public int insert(Paper entity) throws Exception {
        return paperMapper.insert(entity);
    }

    @Override
    public int update(Paper entity) throws Exception {
        return 0;
    }

    @Override
    public int delete(Paper entity) throws Exception {
        return 0;
    }

    @Override
    public Paper select(Paper entity) throws Exception {
        return null;
    }

    @Override
    public Page<Paper> selectPage(Page<Paper> page) {
        return null;
    }

    @Override
    public Page<Paper> selectPageUseDyc(Page<Paper> page) {
        return null;
    }

    @Override
    public void importPaper(File excel, String fileType, int year) {

        try {

            FileInputStream fileInputStream = new FileInputStream(excel);

            boolean is03Excel = fileType.equals(".xls");

            //兼容03,07的格式
            Workbook workbook = is03Excel ? new HSSFWorkbook(fileInputStream) : new XSSFWorkbook(fileInputStream);

            Sheet sheet = workbook.getSheetAt(0);

            Paper paper = new Paper();
            for (int j = 1 ; j < sheet.getPhysicalNumberOfRows() ; j++)
            {

                Row row = sheet.getRow(j);

//                System.out.println(j+" : "+row.getCell(0).getStringCellValue()+":"+row.getCell(1).getStringCellValue()+":"+row.getCell(2).getStringCellValue()+":"+row.getCell(3).getStringCellValue()+":"+row.getCell(4).getStringCellValue()+":"+row.getCell(5).getStringCellValue()+":"+row.getCell(6).getStringCellValue()+":"+row.getCell(7).getStringCellValue());
                String name = row.getCell(2).getStringCellValue().trim();
                String salaryId = teacherMapper.getSalaryIdFromName(name);
                // 可能无法找到salaryId 如果找不到salaryId则跳过
                if(salaryId == null){
                    continue;
                }
                paper.setSalary_id(salaryId);
                paper.setIds_num(row.getCell(0).getStringCellValue().trim());
                paper.setYear(
                        DateTimeHelper.ordinaryStringToTimestamp(row.getCell(5).getStringCellValue().trim())
                );
                paper.setAuthor(name);
                paper.setLevel(row.getCell(6).getStringCellValue().trim());
                paper.setDepartment(row.getCell(7).getStringCellValue().trim());
                String gotAge = row.getCell(3).getStringCellValue().trim();
                System.out.println(gotAge);
                paper.setAge(gotAge.equals("")?null:(Integer.valueOf(gotAge))); //valueof 之前要判空
                paper.setTitle(row.getCell(4).getStringCellValue().trim());
//                System.out.println(paper);
                if(year == 2015){
                    paperMapper.insert2015(paper);
                } else {
                    paperMapper.insert2016(paper);
                }
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
