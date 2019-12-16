package com.controller;

import com.entity.User;
import com.entity.gc;
import com.entity.news;
import com.service.ServiceFactory;
import com.service.UserService;
import com.service.gcImp;
import com.service.newsImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/login")
public class loginServlet extends HttpServlet {
    private UserService userService = ServiceFactory.getUserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/L/login.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.valueOf(req.getParameter("id"));
        String pass=req.getParameter("pass");
        User u=userService.getUser(id, pass);
        if(u!=null){
            req.getSession().setAttribute("username", u.getUserName());
            req.getSession().setAttribute("id", id);
            newsImp newsImp=new newsImp();
            List<news> list=newsImp.getNews();
            List<gc> gcList=new gcImp().getNews();

            req.getSession().setAttribute("newsList",list);
            req.getSession().setAttribute("gcList", gcList);
            req.getSession().setAttribute("user", u);
            resp.sendRedirect("/test");

//            req.setAttribute("newsList", list);
//            req.setAttribute("gcList", gcList);
//            if(u.getRoot()==1){
//                req.getRequestDispatcher("/WEB-INF/jsp/L/test.jsp")
//                        .forward(req, resp);
//            }else{
//                req.getRequestDispatcher("/WEB-INF/jsp/L/notest.jsp")
//                        .forward(req,resp);
//            }



        }else{
            req.getRequestDispatcher("/WEB-INF/jsp/L/failLogin.jsp")
                    .forward(req, resp);
        }

    }
}
