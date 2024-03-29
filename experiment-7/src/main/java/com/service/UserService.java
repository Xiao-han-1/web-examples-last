package com.service;

import com.entity.User;

import java.util.List;

public interface  UserService {
    /**
     * 查询全部用户
     * @return
     */
    public List<User> listUsers();
    /**
     * 添加用户
     * @param name
     */
    public void addUser(String name);
    /**
     * 更新用户
     * @param user
     * @return
     */
    public void updateUser(User user);

    /**
     * 基于ID获取指定用户
     * @param id
     * @return
     */
    public User getUser(int id);
}
