package com.store.service;

import com.store.model.PageResult;
import com.store.model.Product;

import java.util.List;

public interface IProductService {

    public PageResult<Product> findToys(String category, int page);

    public Product findToy(String id);

    public void addProduct(Product product);

    public List<Product> findAllProducts();

    public Product findProductById(String id);

    public void updateProduct(Product product);

    public void deleteToyById(String id);

    public void deleteProductByIds(String ids);

    public List<Product> findProduct(String id, String name, String category, String minprice, String maxprice);

    public PageResult<Product> findProductsByPage(int page);

}
