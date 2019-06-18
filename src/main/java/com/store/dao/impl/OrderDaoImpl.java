package com.store.dao.impl;

import com.store.dao.IOrderDao;
import com.store.model.Order;
import com.store.model.OrderItem;
import com.store.model.Product;
import com.store.utils.DBCPUtils;
import com.store.utils.ManagerThreadLocal;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDaoImpl implements IOrderDao {


    @Override
    public Order findOrderByOrderId(String orderId) throws SQLException {
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());

        //1.查询Order表,把数据封装到Order对象
        String sql1 = "select * from orders where id = ?";
        Order order = qr.query(sql1, new BeanHandler<Order>(Order.class),orderId);



        //2.查询OrderItem表，把数据封装到Order的items属性
//        OrderItem item = new OrderItem();
//        item.setBuynum(buynum);
//        item.setProduct(product);



//        关联查询 查两张表的数据
        String sql2 = "SELECT o.*,p.name,p.price FROM orderitem o,products p WHERE o.product_id = p.id and order_id=?";

//        接下来封装

        List<OrderItem> mItems = qr.query(sql2, new ResultSetHandler<List<OrderItem>>(){
            // 对象里面有对象，要自己来封装 先获取它的结果集
            @Override
            public List<OrderItem> handle(ResultSet rs) throws SQLException {
//                创建一个集合对象

                List<OrderItem> items = new ArrayList<OrderItem>();
//                遍历
                while (rs.next()){
                    //创建OrderItem对象
                    OrderItem item = new OrderItem();
                    item.setBuynum(rs.getInt("buynum"));

                    //创建Product对象
                    Product p = new Product();
                    p.setId(rs.getInt("product_id"));
                    p.setName(rs.getString("name"));
                    p.setPrice(rs.getDouble("price"));

                    //把product放在item
                    item.setProduct(p);

                    //把item放在items去
                    items.add(item);
                }
                return items;
            }
        },orderId);


        //把items放在order里面
        order.setItems(mItems);
        return order;

    }











    @Override
    public List<Order> findOrdersByUserId(String userid) throws SQLException {
        String sql = "select * from orders where user_id = ?";
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());
        return qr.query(sql, new BeanListHandler<Order>(Order.class),userid);
    }

    @Override
    public void add(Order order) throws SQLException {
        //1.sql语句
        String sql = "insert into orders values(?,?,?,?,?,?,?,?)";

        //2.参数
        List<Object> params = new ArrayList<Object>();
        params.add(order.getId());
        params.add(order.getMoney());
        params.add(order.getReceiverAddress());
        params.add(order.getReceiverName());
        params.add(order.getReceiverPhone());
        params.add(order.getPaystate());
        params.add(order.getOrdertime());
        params.add(order.getUser().getId());

        //3.执行
//        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());
//        qr.update(sql,params.toArray());

        QueryRunner qr = new QueryRunner();
        qr.update(ManagerThreadLocal.getConnection(),sql,params.toArray());
    }


//
//    public static void main(String[] args) throws SQLException {
//      Order order = new  OrderDaoImpl().findOrderByOrderId("a47fa8ff-89a7-4bc3-9f74-5b9e4949a88f");
//        System.out.println(order);
//        for(OrderItem item:order.getItems()){
//            System.out.print("数量:" + item.getBuynum());
//            System.out.print(" 名称:" + item.getProduct().getName());
//            System.out.print(" 价格:" + item.getProduct().getPrice());
//            System.out.println();
//        }
//
//
//    }




}


