package com.data_analyze.project.service;

import com.data_analyze.core.service.BaseService;
import com.data_analyze.project.entity.Project;

import java.io.File;

/**
 * Created by jiacheng on 17-3-19.
 */
public interface ProjectService extends BaseService<Project> {
    void importProject(File excel, String fileType, int year);
}
