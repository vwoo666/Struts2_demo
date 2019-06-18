package com.store.web.Action;

import com.store.exception.UserException;
import com.store.model.User;
import com.store.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class FindUserByIdAction extends ActionSupport {

    public String findUserById() throws IOException, ServletException {
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpServletResponse response = ServletActionContext.getResponse();
        //1.获取参数
        String userid = request.getParameter("id");
        //2.从数据库查
        UserServiceImpl us = new UserServiceImpl();
        try {
            User user = us.findUserById(userid);
            //3.放在request
            request.setAttribute("u", user);

            //4.回到modifyuserinfo.jsp,显示数据
           return SUCCESS;
        } catch (UserException e) {

            e.printStackTrace();
            response.getWriter().write(e.getMessage());
        }
        return SUCCESS;

    }





}
