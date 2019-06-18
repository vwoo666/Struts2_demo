package com.store.web.Action;

import com.store.model.Product;
import com.store.service.impl.ProductServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class FindProductByIdAction extends ActionSupport {


    public String findProductById(){
        HttpServletRequest request = ServletActionContext.getRequest();
        //1.获取id
        String id = request.getParameter("id");
        ProductServiceImpl productService = new ProductServiceImpl();
        Product product = productService.findProductById(id);
        System.out.println(product);
        request.setAttribute("product", product);
        return  SUCCESS;
    }



}
