package com.store.dao.impl;

import com.store.dao.IProductDao;
import com.store.model.PageResult;
import com.store.model.Product;
import com.store.utils.DBCPUtils;
import com.store.utils.ManagerThreadLocal;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDaoImpl implements IProductDao {


    @Override  //根据类别计算总记录数
    public long count(String category) throws SQLException {
        //1.定义记录数变量0
        long count = 0;

        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());

        String sql = "select count(*) from products where 1=1";

        if(category != null && !"".equals(category)){
            sql += " and category = ?";
            count = (long) qr.query(sql, new ScalarHandler(),category);
        }else{
            count = (long) qr.query(sql, new ScalarHandler());
        }

        return count;
    }




    @Override   //根据类别、页数 返回当前页的数据
    public List<Product> findToys(String category, int page, int pageSize) throws SQLException {
        //拼接sql和参数
        String sql = "select * from products where 1=1";

        List<Object> params = new ArrayList<Object>();

        if(category != null && !"".equals(category)){
            sql += " and category = ?";
            params.add(category);
        }

        sql += " limit ?,?";
        int start = (page - 1) * pageSize;
        int length = pageSize;
        params.add(start);
        params.add(length);

        //执行
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());

        return qr.query(sql, new BeanListHandler<Product>(Product.class),params.toArray());
    }




    @Override   //通过ID找到商品
    public Product findToy(String id) throws SQLException {
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());
        String sql = "select * from products where id=?";
        return qr.query(sql, new BeanHandler<Product>(Product.class),id);
    }


    @Override
    public void updatePNum(int productId, int num) throws SQLException {
        String sql = "update products set pnum = pnum - ? where id = ?";

//		QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());
//		qr.update(sql,num,productId);
//      事务回滚
        QueryRunner qr = new QueryRunner();
        qr.update(ManagerThreadLocal.getConnection(),sql,num,productId);
    }


    @Override
    public void addProduct(Product product) throws SQLException {
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());
        String sql = "insert into products (id,name,price,pnum,category,description) values (?,?,?,?,?,?)";
        //定义一个数组参数
        Object[] params = new Object[6];
        params[0] = product.getId();
        params[1] = product.getName();
        params[2] = product.getPrice();
        params[3] = product.getPnum();
        params[4] = product.getCategory();
        params[5] = product.getDescription();
        qr.update(sql,params);
    }


    @Override
    public List<Product> findAllProducts() throws SQLException {
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());
        return qr.query("select * from products", new BeanListHandler<Product>(Product.class));
    }


    @Override
    public Product findProductById(String id) throws SQLException {
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());

        String sql = "select * from products where id=?";

        return qr.query(sql, new BeanHandler<Product>(Product.class),id);
    }


    @Override
    public void updateProduct(Product product) throws SQLException {
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());

        String sql = "update products set name = ?, price = ? , pnum = ? , category = ? , description = ? where id = ?";

        qr.update(sql, product.getName(),product.getPrice(),product.getPnum(),product.getCategory(),product.getDescription(),product.getId());

    }


    @Override
    public void deleteProductById(String id) throws SQLException {
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());

        String sql = "delete from products where id = ?";

        qr.update(sql,id);
    }

    @Override
    public void deleteProductByIds(String ids) throws SQLException {
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());

        //1.拆分ids = 1001,1002,10003
        String[] idArr = ids.split(",");

        //2.sql
        String sql = "delete from products where id = ?";

        //3.封装参数
        Object[][] params = new Object[idArr.length][];
        for(int i = 0;i<idArr.length;i++){
            params[i] = new Object[]{idArr[i]};
        }

        //4.执行批处理
        qr.batch(sql, params);

    }

    @Override
    public List<Product> findProduct(String id, String name, String category, String minprice, String maxprice) throws SQLException {
        //查询
        //1.拼接sql语句
        String sql = "select * from products where 1=1";

        if(!"".equals(id)){
            sql += " and id = '" + id +"'";
        }

        if(!"".equals(name)){
            sql += " and name like '%" + name +"%'";
        }

        if(!"".equals(category)){
            sql += " and category = '" + category +"'";
        }


        //价格
        if(!"".equals(minprice)){
            sql += " and price >= " + minprice;
        }

        if(!"".equals(maxprice)){
            sql += " and price <= " + maxprice;
        }

//        System.out.println(sql);

        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());

        return qr.query(sql, new BeanListHandler<Product>(Product.class));
    }


    @Override
    public PageResult<Product> findProductsByPage(int page) throws SQLException {
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());

        //1.创建PageResult对象
        PageResult<Product> pr = new PageResult<Product>();

        //2.设置totalCount【总记录数】
        Long totalCount = (Long) qr.query("select count(*) from products", new ScalarHandler());
        pr.setTotalCount(totalCount);

        //3.设置总页数 10/5
        int totalPage = (int)(totalCount % pr.getPageSize() == 0 ? totalCount / pr.getPageSize() : totalCount / pr.getPageSize() + 1);
        pr.setTotalPage(totalPage);

        //4.设置 当前页
        pr.setCurrentPage(page);

        //5.设置pageresult里的list数据【库存排序】
        String sql = "select * from products order by pnum limit ?,?";
        int start = (page - 1) * pr.getPageSize();
        List<Product> products = qr.query(sql, new BeanListHandler<Product>(Product.class),start,pr.getPageSize());
        pr.setList(products);
        return pr;
    }



}
