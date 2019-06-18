package com.store.web.Action;

import com.store.model.PageResult;
import com.store.model.Product;
import com.store.service.impl.ProductServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class ShowProductByPageAction extends ActionSupport {

    private Product product = new Product();

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public String showProductByPage(){
        HttpServletRequest request = ServletActionContext.getRequest();
         //1.获取参数
        String category = request.getParameter("category");
        String pageStr = request.getParameter("page");
        int page = 1;
        if(pageStr != null && !"".equals(pageStr)){
            //把字符串转成int
            page = Integer.parseInt(pageStr);
        }

        //2.调用service
        ProductServiceImpl ps = new ProductServiceImpl();
        PageResult<Product> pageResult = ps.findToys(category, page);

        //3.存在request
        request.setAttribute("pageResult", pageResult);
        request.setAttribute("category", category);

       //4.创建一个值栈的key (用作导航)
        ValueStack stack = ActionContext.getContext().getValueStack();
        stack.set("category", product.getCategory());


        //5.跳转页面

        return SUCCESS;
    }
}
