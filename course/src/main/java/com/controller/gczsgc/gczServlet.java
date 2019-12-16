package com.controller.gczsgc;

import com.entity.gc;
import com.service.gcImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

@WebServlet("/gcz")
public class gczServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("id", "1");
        req.setAttribute("username", "管理员");
        gcImp g=new gcImp();
        String title=req.getParameter("title");
        String context=req.getParameter("context");
        Date time=Date.valueOf(req.getParameter("time"));
        g.addGC(title, context, time);



        req.getRequestDispatcher("/WEB-INF/jsp/L/gsuccess.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/L/gc/gcz.jsp")
                .forward(req,resp);
    }
}
