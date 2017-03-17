package com.data_analyze.paper.dao;

import com.data_analyze.core.dao.BaseMapper;
import com.data_analyze.paper.entity.Paper;

/**
 * Created by liujie on 2017/3/16.
 */
public interface PaperMapper extends BaseMapper<Paper>{
    public int insert2015(Paper paper);
    public int insert2016(Paper paper);
}
