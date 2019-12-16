package com.controller.zsgc;

import com.entity.gc;
import com.entity.news;
import com.service.gcImp;
import com.service.newsImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

@WebServlet("/z")
public class zServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("id", "1");
        req.setAttribute("username", "管理员");
        newsImp newsImp=new newsImp();
        String title=req.getParameter("title");
        String context=req.getParameter("context");
        Date time=Date.valueOf(req.getParameter("time"));
        newsImp.addNews(title, context, time);



        req.getRequestDispatcher("/WEB-INF/jsp/L/zSuccess.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/L/z.jsp")
                .forward(req,resp);
    }
}
