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
import java.util.List;
@WebServlet("/test")
public class newServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        newsImp newsImp=new newsImp();
        List<news> list=newsImp.getNews();
        List<gc> gcList=new gcImp().getNews();
        req.setAttribute("newsList", list);
        req.setAttribute("gcList", gcList);
        req.setAttribute("id", 1);
        req.setAttribute("username", "管理员");
        req.getRequestDispatcher("/WEB-INF/jsp/L/test.jsp")
                .forward(req, resp);

    }
}
