package com.store.dao.impl;

import com.store.dao.IOrderItemDao;
import com.store.model.OrderItem;
import com.store.utils.DBCPUtils;
import com.store.utils.ManagerThreadLocal;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.SQLException;
import java.util.List;

public class OrderItemDaoImpl implements IOrderItemDao {

    @Override
    public void addOrderItems(List<OrderItem> items) throws SQLException {
        String sql = "insert into orderitem (order_id,product_id,buynum) values(?,?,?)";

        Object[][] params = new Object[items.size()][];
        for(int i=0;i<items.size();i++){
            OrderItem item = items.get(i);
            params[i] = new Object[]{item.getOrder().getId(),item.getProduct().getId(),item.getBuynum()};
        }

//        事务回滚
        QueryRunner qr = new QueryRunner();
//        批处理用batch
        qr.batch(ManagerThreadLocal.getConnection(),sql, params);
    }
}
