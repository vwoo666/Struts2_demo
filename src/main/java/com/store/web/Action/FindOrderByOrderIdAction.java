package com.store.web.Action;

import com.store.model.Order;
import com.store.service.impl.OrderServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;


public class FindOrderByOrderIdAction extends ActionSupport {

    public String findOrderByOrderId(){
        HttpServletRequest request = ServletActionContext.getRequest();

        //1.获取orderId
        String orderId = request.getParameter("orderId");

        //2.调用service
        OrderServiceImpl os = new OrderServiceImpl();
        Order order = os.findOrderByOrderId(orderId);

        //3.转发到orderInfo.jsp【显示数据】
        request.setAttribute("order", order);
        System.out.println(order.getPaystate());
        if (order.getPaystate() == 1){
            return "paid";
        }
        return SUCCESS;
    }
}
