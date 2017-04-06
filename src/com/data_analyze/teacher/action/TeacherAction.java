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

        //学院各单位岗位数据对比
        Map<String,Map<String , Integer>> allPostData = teacherService.getAllPostData();

        Map<String,Integer> JSJKXYJSX_POST_DATA = teacherService.queryPostData("计算机科学与技术系");
        Map<String,Integer> DZXXGCX_POST_DATA = teacherService.queryPostData("电子信息工程系");
        Map<String,Integer> DQYZDHX_POST_DATA = teacherService.queryPostData("电气与自动化工程系");
        Map<String,Integer> JSZX_POST_DATA = teacherService.queryPostData("计算中心");
        Map<String,Integer> DGDZSYZX_POST_DATA = teacherService.queryPostData("电工电子实验中心");


        System.out.println(allPostData);

        System.out.println(JSJKXYJSX_POST_DATA+"-"+DZXXGCX_POST_DATA+"-"+DQYZDHX_POST_DATA+"-"+JSZX_POST_DATA+"-"+DGDZSYZX_POST_DATA);

        //不同单位教师岗位数据
        Map<String,Integer> JSGW = allPostData.get("JSGW");

        //不同单位专任教师数据
        Map<String,Integer> QTZYJSGW = allPostData.get("QTZYJSGW");

        //教师岗位数据
        model.addAttribute("JSGW",JSGW);
        model.addAttribute("QTZYJSGW",QTZYJSGW);


        model.addAttribute("JSJKXYJSX_POST_DATA",JSJKXYJSX_POST_DATA);

        model.addAttribute("DZXXGCX_POST_DATA",DZXXGCX_POST_DATA);

        model.addAttribute("DQYZDHX_POST_DATA",DQYZDHX_POST_DATA);

        model.addAttribute("JSZX_POST_DATA",JSZX_POST_DATA);

        model.addAttribute("DGDZSYZX_POST_DATA",DGDZSYZX_POST_DATA);

        return "/WEB-INF/front/teacher/post_data.jsp";
    }

    @RequestMapping("/hr_data")
    public String hrData(Model model) {

        try {

            //拿到数据
            Map<String,Map<String,Integer>> hrProvinceData = null;

            Map<String,Integer> SingleProvinceDataBS = hrProvinceData.get("BS");

            Map<String,Integer> SingleProvinceDataSS = hrProvinceData.get("SS");

            Map<String,Integer> SingleProvinceDataXS = hrProvinceData.get("XS");

            model.addAttribute("SingleProvinceDataBS",SingleProvinceDataBS);

            model.addAttribute("SingleProvinceDataSS",SingleProvinceDataSS);

            model.addAttribute("SingleProvinceDataXS",SingleProvinceDataXS);

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
