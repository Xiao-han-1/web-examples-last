package com.controller;



import com.service.gcImp;
import com.entity.gc;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/getallgc")
public class getallgcServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        gcImp gcImp=new gcImp();
        List<gc> list=gcImp.getallNews();
        req.setAttribute("list", list);
        req.getRequestDispatcher("/WEB-INF/jsp/getallgc.jsp")
                .forward(req,resp);
    }
}
