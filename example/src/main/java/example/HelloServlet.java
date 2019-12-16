package example;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet{
    private static final Logger LOGGER=Logger.getLogger(HttpServlet.class.getName());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LOGGER.info("doGet() be called 2222");
        LOGGER.info(req.getParameter("username"));
        resp.getWriter().write("response from hellowervlet");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LOGGER.info(req.getParameter("username"));
        LOGGER.info(req.getParameter("password"));
    }
}
