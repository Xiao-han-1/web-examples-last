package com.controller;

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
import java.util.List;
import java.util.logging.Logger;

@WebServlet("/index")
public class indexServlet extends HttpServlet {
    private static Logger logger=Logger.getLogger(indexServlet.class.getName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        newsImp newsImp=new newsImp();
        List<news> list=newsImp.getNews();
        List<gc> gcList=new gcImp().getNews();
        req.setAttribute("newsList", list);
        req.setAttribute("gcList", gcList);
        req.getRequestDispatcher("/WEB-INF/jsp/index.jsp")
                .forward(req, resp);
    }
}
