package com.data_analyze.teach.dao;

import com.data_analyze.teach.entity.Teach;
import org.apache.ibatis.annotations.Param;

/**
 * Created by jiacheng on 17-3-19.
 */
public interface TeachMapper {
    void insert2015(Teach teach);
    void insert2016(Teach teach);

}
