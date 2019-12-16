package com.service;

import com.entity.User;

import java.util.List;

public interface UserService {
    /**
     * 查询全部用户
     * @return
     */
    public List<User> listUsers();
    /**
     * 添加用户
     * @param name
     */
    public void addUser(String name,String pass);
    /**
     * 更新用户
     * @param user
     * @return
     */
    public void updateUser(User user);

    /**
     * 用户登录
     * @param id
     * @return
     */
    public User getUser(int id,String password);

    public int getPK();
}
