package servlet;

import news.DB;
import news.News;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "DetailAction",urlPatterns = "/newsDetail")
public final class DetailAction extends HttpServlet{

    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException
    {
        int newsId = Integer.parseInt(req.getParameter("newsId"));
        HttpSession session = req.getSession();
        DB db = new DB();
        News news = new News();
        try{
            news = News.GetDetail(db, newsId, false);
        }
        catch(Exception e){
            e.printStackTrace();
        }
        session.setAttribute("newsDetail",news);

        if(news.getKeyword() != null || news.getKeyword() != ""){
            try{
                session.setAttribute("newslist",News.SearchRelativeNews(db,newsId,news.getKeyword()));
            }
            catch(Exception e){
                e.printStackTrace();
            }
        }

        db.close();
        String target = "/Demo/week7/tnewsContent.jsp";
        resp.sendRedirect(target);
    }


}
