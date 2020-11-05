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
    <title>Jdbc_2</title>
</head>
<body>
<%!
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
        out.println("数据库驱动程序加载失败！！");
    }
    try
    {
        conn = DriverManager.getConnection(DBURL);
    }
    catch(Exception e)
    {
        out.println("数据库连接失败！！！");
    }
    try
    {
        stmt = conn.createStatement();
        sql = "SELECT id,name,password,age FROM person";
        ResultSet rs = stmt.executeQuery(sql);
        while(rs.next())
        {
            int id = rs.getInt(1);
            String name = rs.getString(2);
            String password = rs.getString("password");
            int age = rs.getInt("age");
%>
            <h2> ID: <%=id%>,姓名: <%=name%>,密码: <%=password%>,年龄: <%=age%> </h2>
<%
        }
    }
    catch (Exception e)
    {
        out.println("数据库操作失败！！！");
    }
    try
    {
        stmt.close();
        conn.close();
    }
    catch(Exception e)
    {
        out.println("数据库关闭失败");
    }
%>
</body>
</html>
