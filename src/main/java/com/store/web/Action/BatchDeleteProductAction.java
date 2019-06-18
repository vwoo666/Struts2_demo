package com.store.web.Action;

import com.store.service.impl.ProductServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class BatchDeleteProductAction extends ActionSupport {

    public String batchDeleteProduct(){
        HttpServletRequest request = ServletActionContext.getRequest();
        //1.获取请求参数
        String ids = request.getParameter("ids");

        //2.调用service
        ProductServiceImpl productService = new ProductServiceImpl();
        productService.deleteProductByIds(ids);

        //3.回到 list.jsp页面
        request.setAttribute("products", productService.findAllProducts());
        return SUCCESS;
    }
}
