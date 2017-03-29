package com.data_analyze.teacher.action;

import com.data_analyze.account.entity.Account;
import com.data_analyze.teacher.entity.Teacher;
import com.data_analyze.teacher.service.TeacherService;
import com.data_analyze.utils.ImportExcel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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

    @RequestMapping(value = "/getSalaryIdByName")
    public ModelAndView getSalaryIdByName() {

        ModelAndView modelAndView = new ModelAndView();

        String name = "方娜";

        String id = teacherService.getSalaryIdFromName(name);

        modelAndView.addObject("id",id);

        modelAndView.setViewName("/main.jsp");

        return modelAndView;
    }


}
