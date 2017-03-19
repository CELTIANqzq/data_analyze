package com.data_analyze.teach.action;

import com.data_analyze.teach.entity.Teach;
import com.data_analyze.teach.service.TeachService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.File;

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
}
