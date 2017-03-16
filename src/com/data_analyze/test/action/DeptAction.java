package com.data_analyze.test.action;

import com.data_analyze.test.entity.Dept;
import com.data_analyze.test.service.DeptService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * Created by cxspace on 16-12-3.
 */


@Controller

@RequestMapping("/dept")
public class DeptAction {

    @Resource
    private DeptService deptService;

    @RequestMapping(value = "/insert")
    public String insert(Dept dept)
    {
        System.out.println("action-"+dept);

        deptService.insertDept(dept);

        return "forward:/jsp/main.jsp";
    }


}
