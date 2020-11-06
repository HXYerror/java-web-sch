<%--
  Created by IntelliJ IDEA.
  User: Hxy
  Date: 2020/11/6
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<jsp:useBean id="conn" scope="page" class = "news.conn"/>
<html>
<head>
    <title>newsmain</title>
</head>
<body>

<h1>欢迎</h1>

<%
    ResultSet rs;
    String strSql = null;
    strSql = "select * from news where type=1 order by time desc";
    rs = conn.executeQuery(strSql);
    while(rs.next()){
        out.println(rs.getInt("Id"));
%>
    <a href="newsContent.jsp?newsId=<%=rs.getInt("Id")%>"> <%=rs.getString("Title")%> </a> </br><%--超链接文章，显示标题--%>
<%
    }
%>
</body>
</html>
