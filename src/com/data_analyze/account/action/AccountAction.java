package com.data_analyze.account.action;

import com.data_analyze.account.entity.Account;
import com.data_analyze.account.service.AccountService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * Created by liujie on 2017/3/16.
 */

@Controller

@RequestMapping("/account")
public class AccountAction {


    @Resource
    private AccountService accountService;

    @RequestMapping(value = "/insert")
    public String insert()
    {

        Account account = new Account();

        account.setAcc_id(234);

        account.setAcc_login("cxspace");

        account.setAcc_name("abc");

        account.setAcc_pass("6666688888");

        accountService.insertAccount(account);

        System.out.println("insert_ok!!!");

        return "forward:/main.jsp";
    }


}
