package com.data_analyze.teacher.service;

import com.data_analyze.core.service.BaseService;
import com.data_analyze.teacher.entity.Teacher;

import java.io.File;
import java.util.List;
import java.util.Map;

/**
 * Created by liujie on 2017/3/16.
 */
public interface TeacherService extends BaseService<Teacher>{

    public int insertTeacher(Teacher teacher);


    public void importTeacherTable(File excel , String fileType);


    public void importTeacher(File excel , String fileType);

    public String getSalaryIdFromName(String name);


    public void hello();


    Map<String, Integer> queryPostData(String office);

    /**
     *
     *   @return
     *    String 是专任教师职称名字   教授   副教授   讲师
     *    Integer 他们分别的数量无参数传入
     *
     */

    Map<String,Integer> getJobLeveData();


}
