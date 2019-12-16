package com.service;
import com.entity.User;
import com.entity.gc;
import com.entity.news;
import com.service.ServiceImp.ServiceImp;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class gcImp{
    private static Logger logger=Logger.getLogger(ServiceImp.class.getName());
    public List<gc> getNews(){
        String sql="SELECT * from data1.gc order by id desc limit 0,5;";
        List<gc> list=new ArrayList<>();
        try(Connection connection= DataSourceUtils.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement(sql);
            ResultSet rs=preparedStatement.executeQuery();
        ){
            while(rs.next()){
                list.add(new gc(rs.getInt("id"),rs.getString("title"), rs.getString("context"),rs.getDate("time")));
            }

        }catch(Exception e){
            logger.warning(e.getMessage());
        }
        return list;
    }

    public gc getGcById(int id){
        String sql="select * from data1.gc where id=?;";
        gc  gc=null;
        try(Connection connection= DataSourceUtils.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement(sql);
        ){
            preparedStatement.setInt(1, id);
            try( ResultSet rs=preparedStatement.executeQuery();)
            {
                while(rs.next()){
                    gc=new gc(rs.getInt("id"),rs.getString("title"), rs.getString("context"),rs.getDate("time"));
                }
            }

        }catch(Exception e){
            logger.warning(e.getMessage());
        }
        return gc;

    }

    public void addGC(String title, String context, Date time) {
        String sql="insert into data1.gc(title,context,time) values(?,?,?)";
        try(Connection connection=DataSourceUtils.getConnection();
            PreparedStatement ps=connection.prepareStatement(sql);
        ){
            ps.setString(1, title);
            ps.setString(2, context);
            ps.setDate(3, time);
            ps.executeUpdate();

        }catch(Exception e){
            logger.warning(e.getMessage());
        }
    }
    public void delete(int id){
        String sql="delete from data1.gc where id=?";
        try(Connection connection=DataSourceUtils.getConnection();
            PreparedStatement ps=connection.prepareStatement(sql);
        ){
            ps.setInt(1, id);
            ps.executeUpdate();

        }catch(Exception e){
            logger.warning(e.getMessage());
        }
    }

    public void update(int id,String title,String context,Date time){
        String sql="update data1.gc set title=?,context=?,time=? where id=?";
        try(Connection connection=DataSourceUtils.getConnection();
            PreparedStatement ps=connection.prepareStatement(sql)){
            ps.setString(1, title);
            ps.setString(2, context);
            ps.setDate(3, time);
            ps.setInt(4, id);
            ps.executeUpdate();
        }catch (Exception e){
            logger.warning(e.getMessage());
        }
    }

    public gc select(int id){
        String sql="select * from data1.gc where id=?";
        gc g=null;
        try(Connection connection=DataSourceUtils.getConnection();
            PreparedStatement ps=connection.prepareStatement(sql)){
            ps.setInt(1, id);
            try(ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    g = new gc(rs.getInt("id"), rs.getString("title"),rs.getString("context"),rs.getDate("time"));
                }
            }
        }catch (Exception e){
            logger.warning(e.getMessage());
        }
        return g;
    }

    public List<gc> getallNews(){
        String sql="SELECT * from data1.gc order by id desc;";
        List<gc> list=new ArrayList<>();
        try(Connection connection= DataSourceUtils.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement(sql);
            ResultSet rs=preparedStatement.executeQuery();
        ){
            while(rs.next()){
                list.add(new gc(rs.getInt("id"),rs.getString("title"), rs.getString("context"),rs.getDate("time")));
            }

        }catch(Exception e){
            logger.warning(e.getMessage());
        }
        return list;
    }


}
