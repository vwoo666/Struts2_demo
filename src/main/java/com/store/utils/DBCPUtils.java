package com.store.utils;

import org.apache.commons.dbcp2.BasicDataSourceFactory;

import javax.sql.DataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;
//DBCP数据源工具
public class DBCPUtils {
//     数据库连接池对象
    private static DataSource ds;


    static {
        try {
            Properties prop = new Properties();
//            关联配置文件：dbcpconfig.properties
            InputStream in = DBCPUtils.class.getClassLoader().getResourceAsStream("dbcpconfig.properties");
            prop.load(in);
            ds = BasicDataSourceFactory.createDataSource(prop);
        } catch (Exception e) {
            throw new ExceptionInInitializerError("初始化失败！！！");
        }

    }

    public static DataSource getDataSource() {
        return ds;
    }


    public static Connection getConnection() {
        try {
            return ds.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
