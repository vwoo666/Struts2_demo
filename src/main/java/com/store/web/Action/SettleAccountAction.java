package com.store.web.Action;

import com.store.model.User;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class SettleAccountAction extends ActionSupport {

    public String settleAccount(){

        HttpServletRequest request = ServletActionContext.getRequest();
        //		判断当前浏览器是否有登录
        User user = (User) request.getSession().getAttribute("user");
//		如果有登录进行定单页面
        if(user != null){
            return SUCCESS;
        }else{
//			如果没有登录，先进行登录
            return ERROR;
        }

    }





}

