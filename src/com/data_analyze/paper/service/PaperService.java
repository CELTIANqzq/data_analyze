package com.data_analyze.paper.service;

import com.data_analyze.core.service.BaseService;
import com.data_analyze.paper.entity.Paper;

import java.io.File;

/**
 * Created by liujie on 2017/3/17.
 */
public interface PaperService extends BaseService<Paper> {

    public void importPaper(File excel, String fileType, int year);

}
