package com.service.ServiceImp;

import com.entity.User;
import com.service.UserService;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class ServiceImp implements UserService {
    private static Logger logger=Logger.getLogger(ServiceImp.class.getName());
    @Override
    public List<User> listUsers() {
        String sql="SELECT * from data1.user";
        List<User> list=new ArrayList<>();
        try(Connection connection= DataSourceUtils.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement(sql);
            ResultSet rs=preparedStatement.executeQuery();
        ){
            while(rs.next()){
                list.add(new User(rs.getInt("id"), rs.getString("userName")));
            }

        }catch(Exception e){
            logger.warning(e.getMessage());
        }
        return list;
    }

    @Override
    public void addUser(String name,String pass) {
        String sql="insert into data1.user(userName,password,root) values(?,?,?)";
        try(Connection connection=DataSourceUtils.getConnection();
            PreparedStatement ps=connection.prepareStatement(sql);
        ){
            ps.setString(1, name);
            ps.setString(2, pass);
            ps.setInt(3, 0);
            ps.executeUpdate();

        }catch(Exception e){
            logger.warning(e.getMessage());
        }
    }
    public int getPK(){
        int id=0;
        String sql="select max(id) from data1.user";
        try(Connection connection=DataSourceUtils.getConnection();
            PreparedStatement ps=connection.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
        ){
           while(rs.next()){
               id=rs.getInt("max(id)");
           }


        }catch(Exception e){
            logger.warning(e.getMessage());
        }
        return id;
    }

    @Override
    public void updateUser(User user) {
        String sql="update data1.user set userName=?,password=? where id=?";
        try(Connection connection=DataSourceUtils.getConnection();
            PreparedStatement ps=connection.prepareStatement(sql)){
            ps.setString(1, user.getUserName());
            ps.setString(2, user.getPassword());
            ps.setInt(3, user.getId());
            ps.executeUpdate();
        }catch (Exception e){
            logger.warning(e.getMessage());
        }
    }

    @Override
    public User getUser(int id,String pass) {
        User user=null;
        String sql="select * from data1.user where id=? and password=?";
        try(Connection connection=DataSourceUtils.getConnection();
            PreparedStatement ps=connection.prepareStatement(sql)){
            ps.setInt(1, id);
            ps.setString(2, pass);
            try(ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    user = new User(rs.getInt("id"), rs.getString("userName"),rs.getInt("root"));
                }
            }

        }catch(Exception e){
            logger.warning(e.getMessage());
        }
        return user;
    }


}
