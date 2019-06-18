package com.store.service.impl;

import com.store.dao.impl.ProductDaoImpl;
import com.store.model.PageResult;
import com.store.model.Product;
import com.store.service.IProductService;

import java.sql.SQLException;
import java.util.List;

public class ProductServiceImpl implements IProductService {

    ProductDaoImpl productDao = new ProductDaoImpl();


    @Override  //封装PageResult
    public PageResult<Product> findToys(String category, int page) {
        try {
            //创建模型
            PageResult<Product> pr = new PageResult<Product>();

            //设置总记录数
            long totalCount = productDao.count(category);
            pr.setTotalCount(totalCount);

            //设置总页数(向上取整)
            int totalPage = (int) Math.ceil(totalCount * 1.0 / pr.getPageSize());
            pr.setTotalPage(totalPage);

            //设置当前页数
            pr.setCurrentPage(page);

            //设置数据list
            List<Product> list = productDao.findToys(category, page, pr.getPageSize());
            pr.setList(list);

            return pr;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }


    @Override   //通过ID查找商品用于商品详情显示
    public Product findToy(String id) {
        try {
            return productDao.findToy(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }


    @Override
    public void addProduct(Product product) {

        try {
            productDao.addProduct(product);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


    @Override
    public List<Product> findAllProducts() {
        try {
            return  productDao.findAllProducts();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    @Override
    public Product findProductById(String id) {
        try {
            return productDao.findProductById(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    @Override
    public void updateProduct(Product product) {
        try {
            productDao.updateProduct(product);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteToyById(String id) {
        try {
            productDao.deleteProductById(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    @Override
    public void deleteProductByIds(String ids) {

        try {
            productDao.deleteProductByIds(ids);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public List<Product> findProduct(String id, String name, String category, String minprice, String maxprice) {
        try {
            return productDao.findProduct(id, name, category, minprice, maxprice);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    @Override
    public PageResult<Product> findProductsByPage(int page) {
        try {
            return productDao.findProductsByPage(page);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}
