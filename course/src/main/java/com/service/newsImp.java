package com.service;
import com.entity.User;
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

public class newsImp implements newsService{
    private static Logger logger=Logger.getLogger(ServiceImp.class.getName());
    public List<news> getNews(){
       String sql="SELECT * from data1.news order by id desc limit 0,5;";
        List<news> list=new ArrayList<>();
        try(Connection connection= DataSourceUtils.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement(sql);
            ResultSet rs=preparedStatement.executeQuery();
        ){
            while(rs.next()){
                list.add(new news(rs.getInt("id"),rs.getString("title"), rs.getString("context"),rs.getDate("time")));
            }

        }catch(Exception e){
            logger.warning(e.getMessage());
        }
        return list;
    }

    public news getNewById(int id){
        String sql="select * from data1.news where id=?;";
        news news=null;
        try(Connection connection= DataSourceUtils.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement(sql);
            ){
            preparedStatement.setInt(1, id);
            try( ResultSet rs=preparedStatement.executeQuery();)
            {
                while(rs.next()){
                    news=new news(rs.getInt("id"),rs.getString("title"), rs.getString("context"),rs.getDate("time"));
                }
            }

        }catch(Exception e){
            logger.warning(e.getMessage());
        }
        return news;

    }
    public void addNews(String title, String context, Date time) {
        String sql="insert into data1.news(title,context,time) values(?,?,?)";
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
        String sql="delete from data1.news where id=?";
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
        String sql="update data1.news set title=?,context=?,time=? where id=?";
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

    public news select(int id){
        String sql="select * from data1.news where id=?";
        news n=null;
        try(Connection connection=DataSourceUtils.getConnection();
            PreparedStatement ps=connection.prepareStatement(sql)){
            ps.setInt(1, id);
            try(ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    n = new news(rs.getInt("id"), rs.getString("title"),rs.getString("context"),rs.getDate("time"));
                }
            }
        }catch (Exception e){
            logger.warning(e.getMessage());
        }
        return n;
    }

    public List<news> getAllNews(){
        String sql="SELECT * from data1.news order by id desc;";
        List<news> list=new ArrayList<>();
        try(Connection connection= DataSourceUtils.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement(sql);
            ResultSet rs=preparedStatement.executeQuery();
        ){
            while(rs.next()){
                list.add(new news(rs.getInt("id"),rs.getString("title"), rs.getString("context"),rs.getDate("time")));
            }

        }catch(Exception e){
            logger.warning(e.getMessage());
        }
        return list;
    }
}
