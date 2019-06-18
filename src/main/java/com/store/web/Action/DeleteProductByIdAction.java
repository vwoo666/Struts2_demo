package com.store.web.Action;

import com.store.service.impl.ProductServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class DeleteProductByIdAction extends ActionSupport {

    public String deleteProductById(){

        HttpServletRequest request = ServletActionContext.getRequest();

        //1.获取id
        String id = request.getParameter("id");

        //2.查找
        ProductServiceImpl productService= new ProductServiceImpl();
        productService.deleteToyById(id);

        //3.加到list.jsp
        request.setAttribute("products", productService.findAllProducts());
        return SUCCESS;
    }
}
