package com.store.dao.impl;

import com.store.dao.IUserDao;
import com.store.exception.UserException;
import com.store.model.User;
import com.store.utils.DBCPUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements IUserDao {



    @Override    //增加用户（注册）
    public void addUser(User user) throws SQLException {
        //1.获取QueryRunner
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());
        //2.sql
        String sql = "insert into user";
        sql += " (username,PASSWORD,gender,email,telephone,introduce,activeCode,state,role,registTime)";
        sql += " values(?,?,?,?,?,?,?,?,?,?)";
        //3参数
        List<Object> list = new ArrayList<Object>();
        list.add(user.getUsername());
        list.add(user.getPassword());
        list.add(user.getGender());
        list.add(user.getEmail());
        list.add(user.getTelephone());
        list.add(user.getIntroduce());
        list.add(user.getActiveCode());
        list.add(user.getState());
        list.add(user.getRole());
        list.add(user.getRegistTime());

        qr.update(sql, list.toArray());
    }


    @Override  //通过激活码来查找用户
    public User findUserByActiveCode(String activeCode) throws SQLException {
        //1.QueryRunner
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());

        //2.sql
        String sql = "select * from user where activeCode=?";

        return qr.query(sql, new BeanHandler<User>(User.class),activeCode);
    }


    @Override  //通过激活码更新用户的状态
    public void updateState(String activeCode) throws SQLException {
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());

        //2.sql
        String sql = "update user set state = 1 where activeCode=?";

        qr.update(sql, activeCode);
    }



    @Override //查询登陆
    public User findUserByUsernameAndPassword(String username, String password) throws SQLException {
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());
        String sql = "select * from user where username = ? and password = ?";
        return qr.query(sql, new BeanHandler<User>(User.class),username,password);
    }


    @Override  //Ajax 异步验证用户名
    public boolean checkUsername(String username) {
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());
        String sql = "select * from user where username = ? ";
        try {
            qr.query(sql, new BeanHandler<User>(User.class),username);
            if(username == null){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


    @Override   //通过id查 修改
    public User findUserById(String id) throws SQLException {
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());
        String sql = "select * from user where id = ?";
        return qr.query(sql, new BeanHandler<User>(User.class),id);
    }


    @Override  // 更新用户信息
    public void updateUser(User user) throws SQLException {
        QueryRunner qr = new QueryRunner(DBCPUtils.getDataSource());
        String sql = "update user set password = ?,gender = ?,telephone = ? where id = ?";
        qr.update(sql, user.getPassword(),user.getGender(),user.getTelephone(),user.getId());  //顺序要与前台获取一致
    }



}
