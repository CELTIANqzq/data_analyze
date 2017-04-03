package com.data_analyze.project.action;

import com.data_analyze.project.service.ProjectService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.File;

/**
 * Created by jiacheng on 17-3-19.
 */
@Controller
@RequestMapping(value = "/project")
public class ProjectAction {
    @Resource
    private ProjectService projectService;

    static private int count = 1;

    @RequestMapping(value = "/insert")
    public String insert(){
        System.out.println("inserting");
        if(count == 1){
            File projectTable = new File("/home/jiacheng/IdeaProjects/data_analyze/conf/2015_projects_table.xlsx");
            projectService.importProject(projectTable, ".xlsx", 2015);
            System.out.println("imported projects2015");

            projectTable = new File("/home/jiacheng/IdeaProjects/data_analyze/conf/2016_projects_table.xlsx");
            projectService.importProject(projectTable, ".xlsx", 2016);
            System.out.println("imported projects2016");

            count++;
        }
        return "forward:/main.jsp";
    }

    @RequestMapping("/work_data_research")
    public String workDataResearch() {
        return "/WEB-INF/front/projects/work_data_research.jsp";
    }
}
