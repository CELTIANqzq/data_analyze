package com.data_analyze.test;

import com.data_analyze.teacher.service.TeacherService;
import com.data_analyze.utils.ImportExcel;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.annotation.Resource;
import java.io.File;

/**
 * Created by liujie on 2017/3/17.
 */


public class TestPOI {


    @Before
    public void prev(){

        ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");

    }

    @Test
    public void testPOI(){

        File teacherTable = new File("/Users/liujie/Desktop/data_analyze/conf/teacher_table.xlsx");

        ImportExcel.importTeacher(teacherTable,".xlsx");

    }


}
