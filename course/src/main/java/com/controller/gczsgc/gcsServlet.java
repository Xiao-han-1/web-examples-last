package com.controller.gczsgc;

import com.service.gcImp;
import com.service.newsImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/gcs")
public class gcsServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.valueOf(req.getParameter("id"));
        gcImp gc=new gcImp();
        gc.delete(id);
        req.getRequestDispatcher("/WEB-INF/jsp/L/gsuccess.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/L/gc/gcs.jsp")
                .forward(req,resp);
    }
}
