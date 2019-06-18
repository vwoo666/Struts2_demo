package com.store.web.Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import com.store.exception.UserException;
import com.store.model.User;
import com.store.service.impl.UserServiceImpl;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Date;
import java.util.UUID;

public class RegisterAction extends ActionSupport {
    public String register() throws SQLException {
        HttpServletRequest request = ServletActionContext.getRequest();

        //检验验证码
        //获取表单的验证码
        String checkcode_client = request.getParameter("checkcode");
        String checkcode_session = (String) request.getSession().getAttribute("rand");
        if(!checkcode_client.equals(checkcode_session)){
            //客户端提交的验证和服务器不一样,跳回注册页面
            ValueStack stack = ActionContext.getContext().getValueStack();
            stack.set("checkcode_err", "验证码不一至");
            return ERROR;
        }


        //1.把参数转成Bean，model
        User user = new User();
        try {
            BeanUtils.populate(user, request.getParameterMap());
//            System.out.println(user);

           // 给无数据的属性赋值
            user.setActiveCode(UUID.randomUUID().toString());   //激活码
            user.setRole("普通用户");//角色
            user.setRegistTime(new Date());
//            System.out.println(user);



            //2.注册
            UserServiceImpl us = new UserServiceImpl();
            us.register(user);

            // 3.返回结果
              //3.1 成功——进入成功页面(registerSuccess.jsp)
               return SUCCESS;

        } catch (UserException e){
            e.printStackTrace();
            //注册失败,回到注册页面
            ValueStack stack = ActionContext.getContext().getValueStack();
            stack.set("register_err", e.getMessage());
            return ERROR;

        }
        catch (Exception e) {
            e.printStackTrace();
            System.out.println("参数转模型失败。。。");
        }


        return NONE;

    }
}