package com.store.dao;

import com.store.model.PageResult;
import com.store.model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductDao {

    public long count(String category) throws SQLException;

    public List<Product> findToys(String category, int page, int pageSize) throws SQLException;

    public Product findToy(String id) throws SQLException;

    public void updatePNum(int productId,int num) throws SQLException;

    public void addProduct(Product product)throws SQLException;

    public List<Product> findAllProducts() throws SQLException;

    public Product findProductById(String id) throws SQLException;

    public void updateProduct(Product product) throws SQLException;

    public void deleteProductById(String id)throws SQLException;

    public void deleteProductByIds(String ids) throws SQLException;

    public List<Product> findProduct(String id, String name, String category, String minprice, String maxprice) throws SQLException;

    public PageResult<Product> findProductsByPage(int page) throws SQLException;
}
