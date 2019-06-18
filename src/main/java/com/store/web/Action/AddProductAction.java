package com.store.web.Action;

import com.store.model.Product;
import com.store.service.impl.ProductServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

public class AddProductAction extends ActionSupport {
          public String addProduct(){
              HttpServletRequest request = ServletActionContext.getRequest();
              //1.把表单的数据封装成模型
              Product product = new Product();
              try {
                  BeanUtils.populate(product, request.getParameterMap());
//                  System.out.println(product);


                  ProductServiceImpl productService = new ProductServiceImpl();
                  productService.addProduct(product);


                  //3.返回list列表页面
//                      先转数据到list先再跳转 不然会没有值

                  List<Product> products = productService.findAllProducts();
                  request.setAttribute("products", products);

                  return SUCCESS;

              } catch (Exception e) {
                  e.printStackTrace();
              }




              return NONE;
          }
}
