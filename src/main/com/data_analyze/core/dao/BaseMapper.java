package com.data_analyze.core.dao;

import com.data_analyze.core.entity.Page;

import java.util.List;

/**
 * Created by cx on 2016/12/05.
 * 使用泛型
 */

public interface BaseMapper<T> {

    //添加单个对象
    public int insert(T entity);

    //修改单个对象
    public int update(T entity);

    //删除单个对象
    public int delete(T entity);

    //查询单个对象
    public T select(T entity);

    //通过关键字分页查询数据列表
    public List<T> selectPageList(Page<T> page);

    //通过关键字分页查询，返回总记录数
    public Integer selectPageCount(Page<T> page);

    //通过关键字分页查询数据列表,多条件
    public List<T> selectPageListUseDyc(Page<T> page);

    //通过关键字查询分页数据,返回总记录数，多条件
    public Integer selectPageCountUseDyc(Page<T> page);

}
