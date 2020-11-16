
<%--
  Created by IntelliJ IDEA.
  User: Hxy
  Date: 2020/11/6
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Vector" %>
<%@ page import="news.*" %>
<html>
<head>
    <title>Main</title>
</head>
<body>


<%
    Vector v = (Vector)session.getAttribute("newslist");
    News news = null;
    if(v != null){
        for(int i = 0;i < v.size();i++){
            news = (News)v.get(i);
            if(news.getType() == 1){
%>

                <span class="s">&nbsp;<a href ="/Demo/newsDetail?newsId=<%=news.getId()%>"> <%=news.getTitle()%></a>
<%
            }
        }
%>
<hr>
<%
        for(int i = 0;i < v.size();i++){
            news = (News)v.get(i);
            if(news.getType() == 2){
%>
                <span class="s">&nbsp;<a href ="/Demo/newsDetail?newsId=<%=news.getId()%>"> <%=news.getTitle()%></a>
<%
            }
        }
    }
%>

</body>
</html>
