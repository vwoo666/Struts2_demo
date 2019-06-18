package com.store.web.Action;

import com.store.model.User;
import com.store.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ModifyUserInfoAction extends ActionSupport {


   public String modifyUserInfo() throws IOException {
       HttpServletRequest request = ServletActionContext.getRequest();
       HttpServletResponse response = ServletActionContext.getResponse();
       //1.获取表单的参数
       User user = new User();
       try {
           BeanUtils.populate(user, request.getParameterMap());
       //2.修改
           UserServiceImpl us = new UserServiceImpl();
           us.modifyUserInfo(user);

           return SUCCESS;
       } catch (Exception e) {
           e.printStackTrace();
           response.getWriter().write(e.getMessage());
       }
       return SUCCESS;
   }
}
