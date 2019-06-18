package com.store.dao;

import com.store.model.OrderItem;

import java.sql.SQLException;
import java.util.List;

public interface IOrderItemDao {


    public void addOrderItems(List<OrderItem> items) throws SQLException;
}
