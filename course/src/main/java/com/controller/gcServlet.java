package com.controller;

import com.entity.gc;
import com.service.gcImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/gc")
public class gcServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.valueOf(req.getParameter("id"));
        gc a=new gcImp().getGcById(id);
        req.getSession().setAttribute("eee",a );
        req.getRequestDispatcher("/WEB-INF/jsp/gc.jsp")
                .forward(req, resp);
    }
}
