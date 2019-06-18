package com.store.web.Action;

import com.store.model.Product;
import com.store.service.impl.ProductServiceImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import static com.opensymphony.xwork2.Action.NONE;
import static com.opensymphony.xwork2.Action.SUCCESS;

public class AddCartAction {

    public String addCart() throws IOException {
        HttpServletResponse response = ServletActionContext.getResponse();
        HttpServletRequest request = ServletActionContext.getRequest();

        //获取id
        String id = request.getParameter("id");

        //通过id查询数据库对应商品
        ProductServiceImpl ps = new ProductServiceImpl();
        Product p = ps.findToy(id);

        //把购买商品放在购物车Map
        //先从session获取购物车数据[cart]
        Map<Product,Integer> cart = (Map<Product, Integer>) request.getSession().getAttribute("cart");

        //如果没有购物车数据，就创建一个map对象
        if(cart == null){
            cart = new HashMap<Product, Integer>();
            cart.put(p, 1);
        }else{

            // 判断map里面是否有当前想购物商品
            if(cart.containsKey(p)){
                cart.put(p, cart.get(p) + 1);
            }else{
                cart.put(p, 1);
            }
        }


        for(Map.Entry<Product, Integer> entry : cart.entrySet()){
            System.out.println(entry.getKey() + "数量" + entry.getValue());
        }



        request.getSession().setAttribute("cart", cart);


        return SUCCESS;
    }



}
