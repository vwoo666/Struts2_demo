package com.store.web.Action;

import com.store.model.PageResult;
import com.store.model.Product;
import com.store.service.impl.ProductServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class AdminProductListAction extends ActionSupport {

    public String adminProductList(){
        HttpServletRequest request = ServletActionContext.getRequest();
        String page = request.getParameter("page");

        //如果没有传值就显示第1页的数据
        if(page == null || "".equals(page)){
            page = "1";
        }


        //调用业务方法
        ProductServiceImpl productService = new ProductServiceImpl();
        PageResult<Product> pageResult = productService.findProductsByPage(Integer.parseInt(page));
//        System.out.println(pageResult);
        //2.把数据放在请求对象中 跳转list.jsp
        request.setAttribute("pageResult", pageResult);
        return SUCCESS;
    }

}
