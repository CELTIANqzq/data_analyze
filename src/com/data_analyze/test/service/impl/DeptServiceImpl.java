package com.data_analyze.test.service.impl;

import com.data_analyze.test.dao.DeptDao;
import com.data_analyze.test.entity.Dept;
import com.data_analyze.test.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * Created by cxspace on 16-12-3.
 */

@Service("deptService")
public class DeptServiceImpl implements DeptService{

    @Autowired
    private DeptDao deptDao;

    /*

         用deptDao的全类名和方法名（sql语句id）

         执行方法,就是执行sql

     */

    @Override
    public int insertDept(Dept dept) {

       /*
          事务管理测试
        */


        int i = deptDao.insertDept(dept);

//        int b = 1 / 0;

        return i;
    }

    @Override
    public Dept selectDept(Integer deptId) {
        return deptDao.selectDept(deptId);
    }
}
