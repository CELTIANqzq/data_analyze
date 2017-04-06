package com.data_analyze.project.service;

import com.data_analyze.core.service.BaseService;
import com.data_analyze.project.entity.Project;

import java.io.File;
import java.util.Map;

/**
 * Created by jiacheng on 17-3-19.
 */
public interface ProjectService extends BaseService<Project> {

    void importProject(File excel, String fileType, int year);

    /**
     *
     * @param year 年份 2010-2016
     * @return
     *
     * <String,,Integer>
     * String单位名 : key用拼音首字母大学来保存
     * (学院人均科研进账、计算机科学与技术系人均科研进账、
     * 电子信息工程系人均科研进账、电气与自动化系人均科研进账、
     * 计算中心人均科研进账、电工电子实验中心人均科研进账)
     * Integer
     * 各单位科研进账数
     */
    Map<String,Float> getAveProjectData(String year);


}
