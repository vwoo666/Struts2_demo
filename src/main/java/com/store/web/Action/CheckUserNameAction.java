package com.store.web.Action;

import com.opensymphony.xwork2.ActionSupport;
import com.store.service.impl.UserServiceImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

public class CheckUserNameAction extends ActionSupport {

    public String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String checkUserName() throws IOException {
        HttpServletResponse response = ServletActionContext.getResponse();
        HttpServletRequest request = ServletActionContext.getRequest();
        response.setContentType("text/html;charset=utf-8");
        PrintWriter w = response.getWriter();
        //2.调用service
        UserServiceImpl us = new UserServiceImpl();

        if (us.checkName(username) == true) {
            w.println("可以使用");
        } else if (us.checkName(username)== false){
            w.println("不可以使用");
        }
        w.close();
        return SUCCESS;
    }


}
