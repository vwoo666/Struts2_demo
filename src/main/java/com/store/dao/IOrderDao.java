package com.store.dao;

import com.store.model.Order;

import java.sql.SQLException;
import java.util.List;

public interface IOrderDao {

    public Order findOrderByOrderId(String orderId) throws SQLException;

    public List<Order> findOrdersByUserId(String userid) throws SQLException;

    public void add(Order order) throws SQLException;
}
