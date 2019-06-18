package com.store.web.Action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class LogoutAction extends ActionSupport {

    public String logout(){
        HttpServletRequest request = ServletActionContext.getRequest();
        request.getSession().invalidate();
        return SUCCESS;
    }
}
