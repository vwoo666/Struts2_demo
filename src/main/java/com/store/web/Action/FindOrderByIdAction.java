package com.store.web.Action;

import com.store.model.Order;
import com.store.model.User;
import com.store.service.impl.OrderServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class FindOrderByIdAction extends ActionSupport {
    public String findOrderById() throws IOException {

        HttpServletResponse response = ServletActionContext.getResponse();
       HttpServletRequest request = ServletActionContext.getRequest();
        //1.获取用户的id
        User user = (User) request.getSession().getAttribute("user");

        if(user == null){
            response.getWriter().write("非法访问..");
            return ERROR;
        }
        //2.调用service
        OrderServiceImpl os = new OrderServiceImpl();
        List<Order> orders =  os.findOrdersByUserId(user.getId()+"");

        //3.存数据在request
        request.setAttribute("orders", orders);
        return SUCCESS;
    }
}
