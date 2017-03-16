package com.data_analyze.test.dao;

import com.data_analyze.test.entity.Dept;

/**
 * Created by cxspace on 16-12-4.
 */
public interface DeptDao {

    public Dept selectDept(Integer deptId);

    public int insertDept(Dept dept);

}
