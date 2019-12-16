package com.filter;

import com.entity.User;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebFilter("/test")
public class loginFilter extends HttpFilter {


    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {

        User user = (User) req.getSession().getAttribute("user");
        if (user.getRoot()==1) {
            chain.doFilter(req, res);
        } else {
            res.sendRedirect("/notest");
        }



    }
}
