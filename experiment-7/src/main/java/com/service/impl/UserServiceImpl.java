package com.service.impl;

import com.entity.User;
import com.service.UserService;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class UserServiceImpl implements UserService {
    private static Logger logger=Logger.getLogger(UserServiceImpl.class.getName());
    @Override
    public List<User> listUsers() {
        String sql="SELECT * from user";
        List<User> list=new ArrayList<>();
        try(Connection connection=DataSourceUtils.getConnection();
        PreparedStatement preparedStatement=connection.prepareStatement(sql);
        ResultSet rs=preparedStatement.executeQuery();
        ){
            while(rs.next()){
                list.add(new User(rs.getInt("id"), rs.getString("name"),rs.getTime("inserttime")));
            }

        }catch(Exception e){
            logger.warning(e.getMessage());
        }
        return list;

    }

    @Override
    public void addUser(String name) {
        String sql="insert into webtest.user(name) values(?)";
        try(Connection connection=DataSourceUtils.getConnection();
            PreparedStatement ps=connection.prepareStatement(sql);
        ){
            ps.setString(1, name);
            ps.executeUpdate();

        }catch(Exception e){
            logger.warning(e.getMessage());
        }
    }

    @Override
    public void updateUser(User user) {
      String sql="update webtest.user set name=? where id=?";
      try(Connection connection=DataSourceUtils.getConnection();
      PreparedStatement ps=connection.prepareStatement(sql)){
        ps.setString(1, user.getName());
        ps.setInt(2, user.getId());
        ps.executeUpdate();
      }catch (Exception e){
          logger.warning(e.getMessage());
      }
    }

    @Override
    public User getUser(int id) {
        User user=null;
        String sql="select * from user where id=?";
        try(Connection connection=DataSourceUtils.getConnection();
        PreparedStatement ps=connection.prepareStatement(sql)){
            ps.setInt(1, id);
            try(ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    user = new User(rs.getInt("id"), rs.getString("name"), rs.getTimestamp("inserttime"));
                }
            }

        }catch(Exception e){
            logger.warning(e.getMessage());
        }
        return user;
    }
}
