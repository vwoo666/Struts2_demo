package com.store.web.interceptor;

import com.store.model.User ;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

public class LoginInterceptor extends AbstractInterceptor {
    public String intercept(ActionInvocation actionInvocation) throws Exception{
        HttpServletRequest request=ServletActionContext.getRequest();
        if(isCheck(request.getRequestURI())){
            Map<String,Object> session=actionInvocation.getInvocationContext().getSession();
            User user=(User) session.get("user");
            if (user==null){
                return Action.LOGIN;
            }
        }
            return  actionInvocation.invoke();
    }
    private boolean isCheck(String path){
        if (path.endsWith("/myacount.action")){
            return false;
        }
        return true;
    }
}
