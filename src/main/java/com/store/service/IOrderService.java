package com.store.service;

import com.store.model.Order;

import java.util.List;

public interface IOrderService {


    public Order findOrderByOrderId(String orderId);

    public List<Order> findOrdersByUserId(String userid);

    public void createOrder(Order order) ;
}
