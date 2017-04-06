package com.data_analyze.teach.dao;

import com.data_analyze.teach.entity.Teach;
import org.apache.ibatis.annotations.Param;

/**
 * Created by jiacheng on 17-3-19.
 */
public interface TeachMapper {
    @Deprecated
    void insert2015(Teach teach);
    @Deprecated
    void insert2016(Teach teach);

    /**
     * 执行sql 返回int 长用来使用count
     * @param sql
     * @return
     */
    int execute(@Param("sql") String sql);

    /**
     * 年度工作总量
     * @param year
     * @return
     */
    float getAllWork(@Param("year") String year);

    /**
     * 某个科室的年度工作总量
     * @param year
     * @param office
     * @return
     */
    float getOfficeWork(@Param("year") String year, @Param("office") String office);

}
