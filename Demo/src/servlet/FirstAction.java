package servlet;
import com.mysql.cj.Constants;
import com.sun.xml.internal.bind.v2.runtime.reflect.opt.Const;
import news.DB;
import news.News;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet(name = "FirstAction",urlPatterns = "/tnewsMain")
public final class FirstAction extends HttpServlet {
    protected void service(HttpServletRequest req, HttpServletResponse resp) 
        throws ServletException, IOException {
        DB db = new DB();
        HttpSession session = req.getSession();
        try {
            session.setAttribute("newslist", News.SearchNewsTitle(db));
        } catch (Exception e) {
            e.printStackTrace();
        }
        db.close();
        String target = "/Demo/week7/tnewsMain.jsp";
        resp.sendRedirect(target);
    }
}