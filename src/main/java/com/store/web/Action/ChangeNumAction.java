package com.store.web.Action;

import com.store.model.Product;
import com.store.service.impl.ProductServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

public class ChangeNumAction extends ActionSupport {

    public String changeNum(){

        HttpServletRequest request = ServletActionContext.getRequest();

        //1.获取参数
        String id = request.getParameter("id");//商品ID
        String num = request.getParameter("num");//购物数量

        //2.更新购物车数据
        //2.1 通过id查找商品
        ProductServiceImpl ps = new ProductServiceImpl();
        Product p = ps.findToy(id);
//        2.2//判断购物的数据与库存的数量
        int a = Integer.parseInt(num);

        if (p.getPnum()<a){
            return ERROR;

        }




//        2.3 通过商品更新session数据
        Map<Product,Integer> cart = (Map<Product, Integer>) request.getSession().getAttribute("cart");
//替换
        if(cart.containsKey(p)){//判断是否有这个商品
            if("0".equals(num)){//移除商品
                cart.remove(p);
            }else{
                cart.put(p, Integer.parseInt(num));
            }
        }

        //重新保存到session
        request.getSession().setAttribute("cart", cart);
        return SUCCESS;
    }





}
