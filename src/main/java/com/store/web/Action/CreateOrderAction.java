package com.store.web.Action;

import com.store.model.Order;
import com.store.model.OrderItem;
import com.store.model.Product;
import com.store.model.User;
import com.store.service.impl.OrderServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.*;

public class CreateOrderAction extends ActionSupport {
    public String createOrder() throws IOException {
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpServletResponse response = ServletActionContext.getResponse();
        //获取session的user
        User user = (User) request.getSession().getAttribute("user");
        if(user == null){
            response.getWriter().write("非法访问...");
            return NONE;
        }

        //取购物车
        Map<Product,Integer> cart = (Map<Product, Integer>) request.getSession().getAttribute("cart");
        if(cart == null || cart.size() == 0){
            response.getWriter().write("购物车没商品");
            return NONE;
        }


        //1.把数据封装好
        Order order = new Order();
        try {
            //1.1把请求参数封装成Order
            BeanUtils.populate(order, request.getParameterMap());

            //1.2补全Order数据
            order.setId(UUID.randomUUID().toString());
            order.setOrdertime(new Date());
            order.setUser(user);

            //1.3封装定单详情OrderItem【定单有n个商品】
            List<OrderItem> items = new ArrayList<OrderItem>();
            //取购物车
            double totalPrice = 0;
            for(Map.Entry<Product, Integer> entry : cart.entrySet()){
                OrderItem item = new OrderItem();
                //设置购物数量
                item.setBuynum(entry.getValue());
                //设置商品
                item.setProduct(entry.getKey());
                //设置定单
                item.setOrder(order);

                totalPrice += entry.getKey().getPrice() * entry.getValue();

                items.add(item);
            }

            //设置Order中items
            order.setItems(items);

            //1.4设置总价格
            order.setMoney(totalPrice);

//            打印：
            System.out.println("---------------");
            System.out.println("定单：");
            System.out.println(order);

            System.out.println("定单中商品：");
            for(OrderItem item : items){
                System.out.println("商品名称:" + item.getProduct().getName() + " 数量:" + item.getBuynum());
            }


            //2.插入数据库
            OrderServiceImpl os = new OrderServiceImpl();
            os.createOrder(order);


            //3.定单成功(移除购物车数据)
            request.getSession().removeAttribute("cart");
            return NONE;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return NONE;

    }
}