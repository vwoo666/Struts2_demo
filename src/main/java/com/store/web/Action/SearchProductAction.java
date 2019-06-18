package com.store.web.Action;

import com.store.model.PageResult;
import com.store.model.Product;
import com.store.service.impl.ProductServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.List;

public class SearchProductAction extends ActionSupport {


    public String searchProduct() throws UnsupportedEncodingException {
        HttpServletRequest request = ServletActionContext.getRequest();
        //设置请求的编码类型来解决post请求的乱码问题
        request.setCharacterEncoding("utf-8");


        //接收参数
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String minprice = request.getParameter("minprice");
        String maxprice = request.getParameter("maxprice");

        //调用service 【根据条件查询】
        ProductServiceImpl productService = new ProductServiceImpl();
        List<Product> products = productService.findProduct(id,name,category,minprice,maxprice);

        //返回结果给list.jsp
        request.setAttribute("products", products);
        return SUCCESS;
    }
}
