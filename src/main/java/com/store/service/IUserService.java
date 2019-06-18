package com.store.service;

import com.store.exception.UserException;
import com.store.model.User;


public interface IUserService {

    public void register(User user) throws UserException;

    public void activeUser(String activeCode) throws UserException;

    public User login(String username,String password)throws UserException;

    public boolean checkName(String username);

    public User findUserById(String id) throws UserException;

    public void modifyUserInfo(User user)throws UserException;

}
