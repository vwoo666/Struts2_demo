package com.store.web.Action;

import com.store.model.Product;
import com.store.service.impl.ProductServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

public class UpdateProductAction extends ActionSupport {

    public String UpdateProduct() throws UnsupportedEncodingException {
        HttpServletRequest request = ServletActionContext.getRequest();
        //设置请求的编码类型来解决post请求的乱码问题
        request.setCharacterEncoding("utf-8");

        //1.把表单的数据封装成模型
        Product product = new Product();
        try {
            BeanUtils.populate(product, request.getParameterMap());
//            System.out.println(product);

            //2.更新数据
            ProductServiceImpl productService = new ProductServiceImpl();
            productService.updateProduct(product);

            //3.回到list页面
            List<Product> products = productService.findAllProducts();
            request.setAttribute("products", products);
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
        }


        return NONE;
    }
}
