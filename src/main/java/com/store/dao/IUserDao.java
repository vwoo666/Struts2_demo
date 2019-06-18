package com.store.dao;

import com.store.exception.UserException;
import com.store.model.User;

import java.sql.SQLException;

public interface IUserDao {

    public void addUser(User user) throws SQLException;

    public User findUserByActiveCode(String activeCode) throws SQLException;

    public void updateState(String activeCode) throws SQLException;

    public User findUserByUsernameAndPassword(String username,String password) throws SQLException;

    public boolean checkUsername(String username);

    public User findUserById(String id) throws SQLException;

    public void updateUser(User user) throws SQLException;


}
