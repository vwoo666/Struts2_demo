package com.store.service.impl;

import com.store.dao.impl.OrderDaoImpl;
import com.store.dao.impl.OrderItemDaoImpl;
import com.store.dao.impl.ProductDaoImpl;
import com.store.model.Order;
import com.store.model.OrderItem;
import com.store.service.IOrderService;
import com.store.utils.ManagerThreadLocal;

import java.sql.SQLException;
import java.util.List;

public class OrderServiceImpl implements IOrderService {

    private OrderDaoImpl orderDao = new OrderDaoImpl();
    private OrderItemDaoImpl orderItemDao = new OrderItemDaoImpl();
    private ProductDaoImpl productDao = new ProductDaoImpl();


    @Override
    public void createOrder(Order order) {
        try {

            //开启事务
            ManagerThreadLocal.beginTransaction();

            //1.插入定单表
            orderDao.add(order);

            //2插入定单详情表
            orderItemDao.addOrderItems(order.getItems());

            //3.减库存
            for(OrderItem item : order.getItems()){
                productDao.updatePNum(item.getProduct().getId(), item.getBuynum());
            }
            //结束事务
            ManagerThreadLocal.commitTransaction();
        } catch (SQLException e) {
            e.printStackTrace();
            //事务回滚
            ManagerThreadLocal.rollbackTransaction();
        }

    }


    @Override
    public List<Order> findOrdersByUserId(String userid) {

        try {
            return orderDao.findOrdersByUserId(userid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;

    }


    @Override
    public Order findOrderByOrderId(String orderId) {
        try {
            return orderDao.findOrderByOrderId(orderId);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }








}
