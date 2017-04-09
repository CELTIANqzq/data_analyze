package com.data_analyze.teach.action;

import com.data_analyze.teach.service.TeachService;
import com.data_analyze.utils.MapHelper;
import com.sun.org.apache.regexp.internal.RE;
import org.omg.CORBA.MARSHAL;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;
import java.util.Map;

/**
 * Created by jiacheng on 17-3-19.
 */
@Controller
@RequestMapping("/teach")
public class TeachAction {
    @Resource
    private TeachService teachService;

    static private int count = 1;

    @RequestMapping("/insert")
    public String insert(){
        System.out.println("inserting");
        if(count == 1){
            count++;
            File teachTable = new File("/home/jiacheng/IdeaProjects/data_analyze/conf/2015_teachs_table.xlsx");
            teachService.importTeach(teachTable, ".xlsx", 2015);
            System.out.println("imported teach2015");

            teachTable = new File("/home/jiacheng/IdeaProjects/data_analyze/conf/2016_teachs_table.xlsx");
            teachService.importTeach(teachTable, ".xlsx", 2016);
            System.out.println("imported teach2016");
        }
        return "forward:/main.jsp";
    }

    @RequestMapping("/getAveTeachData")
    public String getAveTeachData(){



        return "forward:/teach/work_data_teach.do";
    }


    @RequestMapping("work_data_teach")
    public String workDataTeach(Model model , HttpServletRequest request) {

        String year = request.getParameter("YEAR");

        if (year == null || year.equals("")){
            year = "2010";
        }

        model.addAttribute("YEAR",year);

        //动态选择的数据
        Map<String,Float> aveTeachData = teachService.getAveTeachData(year);

        model.addAttribute("aveTeachData",aveTeachData);

        System.out.println(aveTeachData);



        //算法二
        Map<String,Float> aveRealTeachData = teachService.getAveRealTeachData(year);

        model.addAttribute("RealAveTeachData",aveRealTeachData);

        Map<String,Float> RealTeachData2010 = teachService.getAveRealTeachData("2010");

        Map<String,Float> RealTeachData2011 = teachService.getAveRealTeachData("2011");

        Map<String,Float> RealTeachData2012 = teachService.getAveRealTeachData("2012");

        Map<String,Float> RealTeachData2013 = teachService.getAveRealTeachData("2013");

        Map<String,Float> RealTeachData2014 = teachService.getAveRealTeachData("2014");

        Map<String,Float> RealTeachData2015 = teachService.getAveRealTeachData("2015");

        Map<String,Float> RealTeachData2016 = teachService.getAveRealTeachData("2016");

        model.addAttribute("RealTeachData2010",RealTeachData2010);

        model.addAttribute("RealTeachData2011",RealTeachData2011);

        model.addAttribute("RealTeachData2012",RealTeachData2012);

        model.addAttribute("RealTeachData2013",RealTeachData2013);

        model.addAttribute("RealTeachData2014",RealTeachData2014);

        model.addAttribute("RealTeachData2015",RealTeachData2015);

        model.addAttribute("RealTeachData2016",RealTeachData2016);

        model.addAttribute("RealTeachData2010",RealTeachData2010);


        //全部的数据

        Map<String,Float> TeachData2010 = teachService.getAveTeachData("2010");

        Map<String,Float> TeachData2011 = teachService.getAveTeachData("2011");

        Map<String,Float> TeachData2012 = teachService.getAveTeachData("2012");

        Map<String,Float> TeachData2013 = teachService.getAveTeachData("2013");

        Map<String,Float> TeachData2014 = teachService.getAveTeachData("2014");

        Map<String,Float> TeachData2015 = teachService.getAveTeachData("2015");

        Map<String,Float> TeachData2016 = teachService.getAveTeachData("2016");

        model.addAttribute("TeachData2010",TeachData2010);

        model.addAttribute("TeachData2011",TeachData2011);

        model.addAttribute("TeachData2012",TeachData2012);

        model.addAttribute("TeachData2013",TeachData2013);

        model.addAttribute("TeachData2014",TeachData2014);

        model.addAttribute("TeachData2015",TeachData2015);

        model.addAttribute("TeachData2016",TeachData2016);

        model.addAttribute("TeachData2010",TeachData2010);

        model.addAttribute("AveTeachData",aveTeachData);


        //总的
        Map<String,Float> SumTeachData = teachService.getSumTeachData(year);

        model.addAttribute("SumTeachData",SumTeachData);

        //排名前10的
        //    Map<String,Float> getFirstToFiveTeachData(String year,String officeName);
        Map<String,Float> JSJKXYJS_FirstToFiveTeachData = teachService.getFirstToFiveTeachData(year,"计算机科学与技术系");
        Map<String,Float> DQYZDHGCX_FirstToFiveTeachData = teachService.getFirstToFiveTeachData(year,"电气与自动化工程系");
        Map<String,Float> DZXXGCX_FirstToFiveTeachData = teachService.getFirstToFiveTeachData(year,"电子信息工程系");
        Map<String,Float> JSZX_FirstToFiveTeachData = teachService.getFirstToFiveTeachData(year,"计算中心");
        Map<String,Float> DGDZSYZX_FirstToFiveTeachData = teachService.getFirstToFiveTeachData(year,"电工电子实验中心");


        model.addAttribute("JSJKXYJS_FirstToFiveTeachData", MapHelper.sortMapByValue(JSJKXYJS_FirstToFiveTeachData));
        model.addAttribute("DQYZDHGCX_FirstToFiveTeachData",MapHelper.sortMapByValue(DQYZDHGCX_FirstToFiveTeachData));
        model.addAttribute("DZXXGCX_FirstToFiveTeachData",MapHelper.sortMapByValue(DZXXGCX_FirstToFiveTeachData));
        model.addAttribute("JSZX_FirstToFiveTeachData",MapHelper.sortMapByValue(JSZX_FirstToFiveTeachData));
        model.addAttribute("DGDZSYZX_FirstToFiveTeachData",MapHelper.sortMapByValue(DGDZSYZX_FirstToFiveTeachData));

        return "/WEB-INF/front/teach/work_data_teach.jsp";
    }
}
