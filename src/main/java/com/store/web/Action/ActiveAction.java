package com.store.web.Action;

import com.store.exception.UserException;
import com.store.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ActiveAction extends ActionSupport {

    public String active() throws UserException, IOException {

        ValueStack stack = ActionContext.getContext().getValueStack();
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpServletResponse response = ServletActionContext.getResponse();
        response.setHeader("content-type", "text/html;charset=utf-8");
        //1.获取参数
        String activecode = request.getParameter("activeCode");

        //2.激活
        UserServiceImpl us = new UserServiceImpl();
        try {
            us.activeUser(activecode);
            response.getWriter().write("激活成功");
            stack.set("activeMessage","激活成功");
        } catch (UserException e) {
            e.printStackTrace();
            response.getWriter().write(e.getMessage());
            String activeMessage=e.getMessage();
            stack.set("activeMessage", activeMessage);
        }
        return SUCCESS;
    }

}