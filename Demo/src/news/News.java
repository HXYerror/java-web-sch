package news;

import java.sql.*;
import java.util.Vector;

public class News {
    protected int id;
    protected String title;
    protected String content;
    protected String author;
    protected String time;
    protected String keyword;
    protected int type;
    public  News(){}

    public void setId(int id){
        this.id = id;
    }

    public void setTitle(String title){
        this.title = title;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getId(){
        return id;
    }

    public String getTitle(){
        return title;
    }

    public String getContent(){
        return content;
    }

    public String getTime(){
        return time;
    }

    public String getKeyword(){
        return keyword;
    }

    public int getType(){
        return type;
    }

    /**
     *
     * @param db
     * @return newList
     * @throws Exception
     * 获取所有新闻信息列表
     */
    public static Vector SearchNewsTitle(DB db) throws Exception{
        Vector newsList = new Vector();
        ResultSet rs;
        String strSql = null;
        strSql = "select * from news order by time desc";
        rs = db.executeQuery(strSql);
        while(rs.next()){
            News news =new News();

            news.setId(rs.getInt("id"));
            news.setTitle(rs.getString("title"));
            news.setTime(rs.getString("time"));
            news.setType(rs.getInt("type"));

            newsList.add(news);
        }
        System.out.println("newsList: "+newsList.size());
        return newsList;
    }

    /**
     *
     * @param db
     * @param newsId
     * @param keyword
     * @return
     * @throws Exception
     *
     * 获取所有与给定新闻关键字相同的相关新闻列表
     */
    public static Vector SearchRelativeNews(DB db,int newsId,String keyword) throws Exception{
        Vector newsList = new Vector();
        ResultSet rs;
        String strSql = null;
        strSql = "select * from news where id<>" + newsId + " and title like'%" + keyword + "%' order by time desc";
        rs = db.executeQuery(strSql);

        while(rs.next()){
            News news =new News();

            news.setId(rs.getInt("id"));
            news.setTitle(rs.getString("title"));
            news.setTime(rs.getString("time"));

            newsList.add(news);

        }
        System.out.println("newsList: "+newsList.size());
        return newsList;
    }

    /**
     *
     * @param db
     * @param newsId
     * @param bEdit
     * @return
     * @throws Exception
     *
     * 获取给定新闻编号的新闻详细信息
     */
    public static News GetDetail(DB db,int newsId,boolean bEdit) throws Exception{
        ResultSet rs;
        String strSql = null;
        String rplContent=null;
        strSql = "select * from news where id = " + newsId;
        rs = db.executeQuery(strSql);
        News news = new News();
        if (rs.next()){
            news.setId(newsId);
            news.setTitle(rs.getString("title"));
            news.setAuthor(rs.getString("author"));

            rplContent = rs.getString("content");

            if(!bEdit){
                rplContent = rplContent.replaceAll("\n","<br>");
            }

            news.setContent(rplContent);
            news.setTime(rs.getString("time"));
            news.setKeyword(rs.getString("keyword"));
            news.setType(rs.getInt("type"));
        }
        return news;
    }
}
