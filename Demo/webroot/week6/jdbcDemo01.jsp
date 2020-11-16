<%--
  Created by IntelliJ IDEA.
  User: Hxy
  Date: 2020/11/5
  Time: 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*"%>
<html>
<head>
    <title>Jdbc_1</title>
</head>
<body>
<%
    String DBDRIVER = "sun.jdbc.odbc.JdbcOdbcDriver";
    String DBURL = "jdbc:odbc:test2";

    Connection conn = null;
    Statement stmt = null;
    String sql = null;
%>
<%
    try
    {
        Class.forName(DBDRIVER);
    }
    catch(Exception e)
    {
        out.println("数据库驱动程序加载失败！！"+e+"\n");
    }
    try
    {
        conn = DriverManager.getConnection(DBURL);
    }
    catch(Exception e)
    {
        out.println("数据库连接失败！！！"+e+"\n");
    }
    try
    {
        stmt = conn.createStatement();
        sql = "INSERT INTO person(name,password,age) VALUES ('admin','12345',30)";
        stmt.executeUpdate(sql);
    }
    catch (Exception e)
    {
        out.println("数据库操作失败！！！"+e+"\n");
    }
    try
    {
        stmt.close();
        conn.close();
        out.println("成功修改了数据库"+"\n");
    }
    catch(Exception e)
    {
        out.println("数据库关闭失败!!!"+e+"\n");
    }
%>
</body>
</html>
