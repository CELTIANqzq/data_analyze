package test.util;

import com.data_analyze.paper.service.PaperService;
import com.data_analyze.project.service.ProjectService;
import com.data_analyze.teach.service.TeachService;
import com.data_analyze.teacher.service.TeacherService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import test.base.BaseTest;

import java.io.File;

/**
 * Created by jiacheng on 17-4-3.
 */
public class ImportExcel extends BaseTest{
    @Autowired
    TeacherService teacherService;
    @Autowired
    PaperService paperService;
    @Autowired
    ProjectService projectService;
    @Autowired
    TeachService teachService;


//    @Test
//    public void importTeacher() {
//        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/teacher_table.xlsx");
//        teacherService.importTeacher(file, ".xlsx");
//    }

    @Test
    public void importPaper2016(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/paper/2016paper.xlsx");
        paperService.importPaper(file, ".xlsx", 2016);
    }
    @Test
    public void importPaper2015(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/paper/2015paper.xlsx");
        paperService.importPaper(file, ".xlsx", 2015);
    }
    @Test
    public void importPaper2014(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/paper/2014paper.xlsx");
        paperService.importPaper(file, ".xlsx", 2014);
    }
    @Test
    public void importPaper2013(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/paper/2014paper.xlsx");
        paperService.importPaper(file, ".xlsx", 2013);
    }
    @Test
    public void importPaper2012(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/paper/2012paper.xlsx");
        paperService.importPaper(file, ".xlsx", 2012);
    }
    @Test
    public void importPaper2011(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/paper/2011paper.xlsx");
        paperService.importPaper(file, ".xlsx", 2011);
    }
    @Test
    public void importPaper2010(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/paper/2010paper.xlsx");
        paperService.importPaper(file, ".xlsx", 2010);
    }


    @Test
    public void importProject2016(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/project/2016project.xlsx");
        projectService.importProject(file, ".xlsx", 2016);
    }
    @Test
    public void importProject2015(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/project/2015project.xlsx");
        projectService.importProject(file, ".xlsx", 2015);
    }
    @Test
    public void importProject2014(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/project/2014project.xlsx");
        projectService.importProject(file, ".xlsx", 2014);
    }
    @Test
    public void importProject2013(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/project/2013project.xlsx");
        projectService.importProject(file, ".xlsx", 2013);
    }
    @Test
    public void importProject2012(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/project/2012project.xlsx");
        projectService.importProject(file, ".xlsx", 2012);
    }
    @Test
    public void importProject2011(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/project/2011project.xlsx");
        projectService.importProject(file, ".xlsx", 2011);
    }
    @Test
    public void importProject2010(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/project/2010project.xlsx");
        projectService.importProject(file, ".xlsx", 2010);
    }



    @Test
    public void importTeach2016(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/teach/2016teach.xlsx");
        teachService.importTeach(file, ".xlsx", 2016);
    }
    @Test
    public void importTeach2015(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/teach/2015teach.xlsx");
        teachService.importTeach(file, ".xlsx", 2015);
    }
    @Test
    public void importTeach2014(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/teach/2014teach.xlsx");
        teachService.importTeach(file, ".xlsx", 2014);
    }
    @Test
    public void importTeach2013(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/teach/2013teach.xlsx");
        teachService.importTeach(file, ".xlsx", 2013);
    }
    @Test
    public void importTeach2012(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/teach/2012teach.xlsx");
        teachService.importTeach(file, ".xlsx", 2012);
    }
    @Test
    public void importTeach2011(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/teach/2011teach.xlsx");
        teachService.importTeach(file, ".xlsx", 2011);
    }
    @Test
    public void importTeach2010(){
        File file = new File("/home/jiacheng/下载/data_analyze/sql/excel/teach/2010teach.xlsx");
        teachService.importTeach(file, ".xlsx", 2010);
    }


}
