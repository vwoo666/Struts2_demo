package com.store.service.impl;

import com.store.dao.impl.UserDaoImpl;
import com.store.exception.UserException;
import com.store.model.User;
import com.store.service.IUserService;
import com.store.utils.SendJMail;

import java.sql.SQLException;

public class UserServiceImpl implements IUserService {

    UserDaoImpl userDao = new UserDaoImpl();



    @Override   //注册
    public void register(User user) throws UserException  {

        try {
            //往数据库里面添加用户
            userDao.addUser(user);

            String link = "http://localhost:8080/struts2_war_exploded/active.action?activeCode=" + user.getActiveCode();
            String html = "<a href=\"" + link + "\">欢迎你注册Toys Store,请点击激活</a>";
            System.out.println(html);
            //发送邮件
            SendJMail.sendMail(user.getEmail(), html);

        } catch (SQLException e) {
            e.printStackTrace();
            throw new UserException("注册失败，用户名重复");
        }

    }


    @Override       //激活用户
    public void activeUser(String activeCode) throws UserException {
        try {
            //1.查询激活码的用户是否存在
            User user = userDao.findUserByActiveCode(activeCode);

            if (user == null) {
                throw new UserException("非法激活，用户不存在");
            }

            if (user != null && user.getState() == 1) {
                throw new UserException("用户已经激活过了...");
            }
//            激活
            userDao.updateState(activeCode);
        } catch (SQLException e) {
            throw new UserException("激活失败");
        }
    }




    @Override    //登陆
    public User login(String username, String password) throws UserException {
        try {
            //1.查询
            User user = userDao.findUserByUsernameAndPassword(username, password);

            //2.判断
            if(user == null){
                throw new UserException("用户名或者密码不正确");
            }

            if(user.getState() == 0){
                throw new UserException("用户未激活，请先登录邮件进行激活");
            }

            return user;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new UserException("登录失败");
        }

    }


    @Override //Ajax
    public boolean checkName(String username) {

        return userDao.checkUsername(username);
    }


    @Override  //    通过ID找用户（数据修改页面 ————信息显示。。。）
    public User findUserById(String id) throws UserException {
        try {
            //1.查询
            User user = userDao.findUserById(id);
            //2.判断
            if(user == null){
                throw new UserException("用户名不存在");
            }
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new UserException("未知错误");
        }
    }


    @Override  //   修改用户信息
    public void modifyUserInfo(User user) throws UserException {
        try {
            userDao.updateUser(user);
        } catch (SQLException e) {
            throw new UserException("未知错误");
        }

    }














}
