package com.data_analyze.teach.service;

import com.data_analyze.core.service.BaseService;
import com.data_analyze.teach.entity.Teach;

import java.io.File;

/**
 * Created by jiacheng on 17-3-19.
 */
public interface TeachService extends BaseService<Teach> {
    void importTeach(File excel, String fileType, int year);
}
