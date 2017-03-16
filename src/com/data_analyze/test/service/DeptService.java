package com.data_analyze.test.service;

import com.data_analyze.test.entity.Dept;

/**
 * Created by cxspace on 16-12-3.
 */
public interface DeptService {

    public Dept selectDept(Integer deptId);

    public int insertDept(Dept dept);

}
