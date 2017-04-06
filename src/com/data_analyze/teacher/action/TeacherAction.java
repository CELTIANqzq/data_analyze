package com.data_analyze.teacher.action;

import com.data_analyze.teacher.entity.Teacher;
import com.data_analyze.teacher.service.TeacherService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by liujie on 2017/3/17.
 */

@Controller

@RequestMapping("/teacher")
public class TeacherAction {

    @Resource
    private TeacherService teacherService;

    @RequestMapping("/post_data")
    public String postData(Model model) {
//        Map<String,Integer> cs = teacherService.queryPostData("计算机科学与技术系");
//        Map<String,Integer> ee = teacherService.queryPostData("电子信息工程系");
//        Map<String,Integer> auto = teacherService.queryPostData("电气与自动化工程系");
//        Map<String,Integer> caculateCenter = teacherService.queryPostData("计算中心");
//        Map<String,Integer> eleExperience = teacherService.queryPostData("电工电子实验中心");
//
//        model.addAttribute("cs", cs);
//        model.addAttribute("ee", ee);
//        model.addAttribute("auto", auto);
//        model.addAttribute("caculateCenter", caculateCenter);
//        model.addAttribute("eleExperience", eleExperience);

        //学院各单位岗位数据对比
        Map<String,Map<String , Integer>> allPostData = teacherService.getAllPostData();

        Map<String,Integer> JSJKXYJSX_POST_DATA = teacherService.queryPostData("计算机科学与技术系");
        Map<String,Integer> DZXXGCX_POST_DATA = teacherService.queryPostData("电子信息工程系");
        Map<String,Integer> DQYZDHX_POST_DATA = teacherService.queryPostData("电气与自动化工程系");
        Map<String,Integer> JSZX_POST_DATA = teacherService.queryPostData("计算中心");
        Map<String,Integer> DGDZSYZX_POST_DATA = teacherService.queryPostData("电工电子实验中心");


        model.addAttribute("AllPostData",allPostData);




        return "/WEB-INF/front/teacher/post_data.jsp";
    }

    @RequestMapping("/hr_data")
    public String hrData(Model model) {

//        <!--专任教师职称结构-->
        try {

//            Map<String, Integer> teacherJobLeveStructure = teacherService.getJobLeveData();
//
//            model.addAttribute("teacherJobLeveStructure",teacherJobLeveStructure);

        }catch (Exception e){

            e.printStackTrace();
        }
        return "/WEB-INF/front/teacher/hr_data.jsp";
    }
    @RequestMapping("hr_detail_data")
    public String hrDetailData() {
        return "/WEB-INF/front/teacher/hr_detail_data.jsp";
    }


}
