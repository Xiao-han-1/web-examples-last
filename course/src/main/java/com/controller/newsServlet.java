package com.controller;

import com.entity.news;
import com.service.newsImp;
import com.service.newsService;
import com.service.newsFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;


@WebServlet("/news")
public class newsServlet extends HttpServlet {
    private newsService newsService=newsFactory.getNewsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.valueOf(req.getParameter("id"));
        news a=newsService.getNewById(id);
        req.getSession().setAttribute("eee",a );
        req.getRequestDispatcher("/WEB-INF/jsp/news.jsp")
                .forward(req, resp);
    }


}
