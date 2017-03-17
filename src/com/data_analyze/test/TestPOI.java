package com.data_analyze.test;

import com.data_analyze.utils.ImportExcel;
import org.junit.Test;

import java.io.File;

/**
 * Created by liujie on 2017/3/17.
 */


public class TestPOI {


    @Test
    public void testPOI(){

        File teacherTable = new File("/Users/liujie/Desktop/data_analyze/conf/teacher_table.xlsx");

        ImportExcel.importTeacherTable(teacherTable,".xlsx");

    }


}
