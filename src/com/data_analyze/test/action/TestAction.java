package com.data_analyze.test.action;

import com.data_analyze.test.entity.Dept;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by cx on 2016/12/05.
 */

@Controller

@RequestMapping("/test")
public class TestAction {

    @RequestMapping("/doAjax")

    @ResponseBody //如果是json格式数据的返回，必须用这个注解

    public Object doAjax(Dept dept){

        System.out.println("doAjax.dept"+dept);

        dept.setDeptName("sb");

        return dept;
    }


    @RequestMapping(value = "/hello")
    public String insert(Dept dept)
    {
        System.out.println("hello");

//        deptService.insertDept(dept);

        return "forward:/main.jsp";
    }
}
