package com.store.web.Action;

import com.opensymphony.xwork2.ActionSupport;
import com.store.model.User;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyAccountAction extends ActionSupport {

    public String myacount(){
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpServletResponse response = ServletActionContext.getResponse();
        User user = (User)request.getSession().getAttribute("user");
        if (user != null) {
            return SUCCESS;
        } else {
           return ERROR;
        }

    }
}
