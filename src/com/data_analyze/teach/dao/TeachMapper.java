package com.data_analyze.teach.dao;

import com.data_analyze.teach.entity.Teach;
import org.apache.ibatis.annotations.Param;

import java.util.List;

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

    /**
     * 根据工作量排序，分页查询科室
     * @param year
     * @param office
     * @param beforeBegin
     * @param limit
     * @return
     */
    List<Teach> queryTeachByPageInOffice(@Param("year") String year, @Param("office") String office, @Param("beforeBegin") String beforeBegin, @Param("limit") String limit);

    /**
     * 根据工作量排序，分页查询全院
     * @param year
     * @param beforeBegin
     * @param limit
     * @return
     */
    List<Teach> queryTeachByPage(@Param("year") String year, @Param("beforeBegin") String beforeBegin, @Param("limit") String limit);
}
