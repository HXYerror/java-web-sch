<%@ page import="java.util.Vector" %>
<%@ page import="news.News" %>
<%--
  Created by IntelliJ IDEA.
  User: Hxy
  Date: 2020/11/6
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Vector v = (Vector)session.getAttribute("newslist");
    News DetailNews = (News)session.getAttribute("newsDetail");
    News Relativenews = null;
%>
<html>
<head>
    <title>Content</title>
</head>
<body>
<h3>title</h3>
<%=DetailNews.getTitle()%>
<h3>content</h3>
<%=DetailNews.getContent()%>
</br>

<%
    if(v != null ){
        for(int i = 0;i < v.size();i++)
        {
            Relativenews = (News)v.get(i);

%>
        <A href="/Demo/newsDetail?newsId=<%=Relativenews.getId()%>"> <%=Relativenews.getTitle()%></A>
        <%=Relativenews.getTime()%> <br>
<%
        }
    }
%>



</body>
</html>