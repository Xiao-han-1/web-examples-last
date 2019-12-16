package com.controller;

import com.entity.User;
import com.service.ServiceFactory;
import com.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;
@WebServlet("/register")
public class registerServlet extends HttpServlet {
    private UserService userService = ServiceFactory.getUserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/L/register.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("name");
        String pass=req.getParameter("pass");
        userService.addUser(name,pass);
        int id=userService.getPK();
        req.setAttribute("id", id);
        req.setAttribute("name", name);

        req.getRequestDispatcher("/WEB-INF/jsp/L/successRegister.jsp")
                .forward(req, resp);
    }
}
