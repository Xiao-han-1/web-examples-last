package com.controller.zsgc;

import com.service.newsImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
@WebServlet("/g")
public class gServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/L/g.jsp")
                .forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       int id=Integer.valueOf(req.getParameter("id"));
       String title=req.getParameter("title");
       String context=req.getParameter("context");
        Date time=Date.valueOf(req.getParameter("time"));
        newsImp newsImp=new newsImp();
        newsImp.update(id, title, context, time);
        req.getRequestDispatcher("/WEB-INF/jsp/L/zSuccess.jsp")
                .forward(req,resp);
    }
}
