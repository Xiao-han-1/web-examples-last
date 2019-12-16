package com.controller;

import com.entity.news;
import com.service.newsImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@WebServlet("/getallnews")
public class getallnewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        newsImp newsImp=new newsImp();
        List<news> list=newsImp.getAllNews();
        req.setAttribute("list", list);
        req.getRequestDispatcher("/WEB-INF/jsp/getallnews.jsp")
                .forward(req,resp);
    }
}
