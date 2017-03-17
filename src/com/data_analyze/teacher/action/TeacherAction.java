package com.data_analyze.teacher.action;

import com.data_analyze.account.entity.Account;
import com.data_analyze.teacher.entity.Teacher;
import com.data_analyze.teacher.service.TeacherService;
import com.data_analyze.utils.ImportExcel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.File;

/**
 * Created by liujie on 2017/3/17.
 */

@Controller

@RequestMapping("/teacher")
public class TeacherAction {

    @Resource
    private TeacherService teacherService;

    @RequestMapping(value = "/insert")
    public String insert() throws Exception {


        File teacherTable = new File("/Users/liujie/Desktop/data_analyze/conf/teacher_table.xlsx");

        teacherService.importTeacherTable(teacherTable,".xlsx");

        System.out.println("insert_ok!!!");

        return "forward:/main.jsp";
    }


}
