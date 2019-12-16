package com.controller.gczsgc;

import com.entity.gc;
import com.entity.news;
import com.service.gcImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/gcc")
public class gccServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/L/gc/gcc.jsp")
                .forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.valueOf(req.getParameter("id"));
        gcImp gcI=new gcImp();
        gc g=gcI.select(id);
        if(g!=null) {
            req.setAttribute("eee", g);
            req.getRequestDispatcher("/WEB-INF/jsp/gc.jsp")
                    .forward(req, resp);
        }else{
            req.getRequestDispatcher("/WEB-INF/jsp/L/ccFail.jsp")
                    .forward(req,resp);
        }
    }
}
