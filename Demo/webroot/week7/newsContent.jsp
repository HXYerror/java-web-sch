<%--
  Created by IntelliJ IDEA.
  User: Hxy
  Date: 2020/11/6
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="conn" scope="page" class ="news.conn"/>
<%@page import="java.sql.* "%>
<html>
<head>
    <title>newsContent</title>
</head>
<body>
<%
    String id="";
    String keyword="";
    String rplContent="";
    ResultSet rs;
    String strSql=null;
    id=request.getParameter("newsId");
    strSql="select * from news where Id="+id;
    rs=conn.executeQuery(strSql);

    while(rs.next()) {
        keyword = rs.getString("keyword");
        out.print(rs.getString("Title")+"<br>");
        rplContent = rs.getString("content").replaceAll("\n", "<br>");
        out.print("keyword:"+keyword+"<br>");
        out.print("content:"+rplContent+"<br>");
    }
%>
</body>
</html>
