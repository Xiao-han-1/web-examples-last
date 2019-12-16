package com.controller.zsgc;

import com.entity.news;
import com.service.newsImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/c")
public class cServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/L/c.jsp")
                .forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.valueOf(req.getParameter("id"));
        newsImp newsImp=new newsImp();
        news n=newsImp.select(id);
        if(n!=null) {
            req.setAttribute("eee", n);
            req.getRequestDispatcher("/WEB-INF/jsp/news.jsp")
                    .forward(req, resp);
        }else{
            req.getRequestDispatcher("/WEB-INF/jsp/L/cFail.jsp")
                    .forward(req,resp);
        }
    }
}
