package com.data_analyze.test.entity;

import java.io.Serializable;

/**
 * Created by cxspace on 16-12-4.
 *
 * 实体类 - 注意数据库column映射单词之间用_,mysql不区分大小写
 *
 */
public class Dept implements Serializable{

    private Integer deptId;

    private String deptName;

    private String deptAddress;

    public String getDeptAddress() {
        return deptAddress;
    }

    public void setDeptAddress(String deptAddress) {
        this.deptAddress = deptAddress;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    @Override
    public String toString() {
        return "Dept{" +
                "deptAddress='" + deptAddress + '\'' +
                ", deptId=" + deptId +
                ", deptName='" + deptName + '\'' +
                '}';
    }

    public Dept(String deptAddress, Integer deptId, String deptName) {
        this.deptAddress = deptAddress;
        this.deptId = deptId;
        this.deptName = deptName;
    }

    public Dept() {
    }
}
