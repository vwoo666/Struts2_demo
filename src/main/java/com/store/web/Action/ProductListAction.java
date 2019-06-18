package com.store.web.Action;

import com.store.model.Product;
import com.store.service.impl.ProductServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class ProductListAction extends ActionSupport {

    public String productList(){
        HttpServletRequest request = ServletActionContext.getRequest();

        //调用业务方法
        ProductServiceImpl productService = new ProductServiceImpl();
        List<Product> products = productService.findAllProducts();
//        System.out.println(products);

        //2.把数据放在请求对象中
        request.setAttribute("products", products);

//       进入list.jsp显示
        return SUCCESS;
    }



}
