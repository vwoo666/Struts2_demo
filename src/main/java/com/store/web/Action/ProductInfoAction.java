package com.store.web.Action;

import com.store.model.Product;
import com.store.service.impl.ProductServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class ProductInfoAction extends ActionSupport {



    public String productInfo(){
        HttpServletRequest request = ServletActionContext.getRequest();


        //1.获取id
        String id = request.getParameter("id");

        //2.通过id查询数据库对应商品 dao/service
        ProductServiceImpl ps = new ProductServiceImpl();
        Product product = ps.findToy(id);


        //3.把商品存在request,跳转到product_info.jsp进行数据展示
        request.setAttribute("product", product);
          return SUCCESS;
    }



}
