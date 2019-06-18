package com.store.web.Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;
import com.store.exception.UserException;
import com.store.model.User;
import com.store.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

public class LoginAction extends ActionSupport {


    public String login() throws IOException {
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpServletResponse response = ServletActionContext.getResponse();
        request.setCharacterEncoding("UTF-8");

        //1.获取请求参数
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        //2.调用service
        UserServiceImpl us = new UserServiceImpl();
        try {
            User user = us.login(username, password);
            //登录成功，回到首页index.jsp
            //把user保存到session
            request.getSession().setAttribute("user", user);

            if("管理员".equals(user.getRole())){//进入后台界面
                return "admin";
            }else{//登录成功，回到首页index.jsp
               return SUCCESS;
            }
        } catch (UserException e) {
            e.printStackTrace();
            //登录失败，回到登录页面
            ValueStack stack = ActionContext.getContext().getValueStack();
            stack.set("login_msg", e.getMessage());
            return ERROR;
        }

    }

}
