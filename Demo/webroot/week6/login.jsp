<%--
  Created by IntelliJ IDEA.
  User: Hxy
  Date: 2020/10/28
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>验证页面</title>
</head>
<body>
<%
    String username = request.getParameter("uid");
    String password = request.getParameter("upwd");
    if(username != null && !username.equals("")){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/test1?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT","root","chaoyue123");

            //防止注入

            String sql = "select * from users  where username = ? and password = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,username);
            ps.setString(2,password);


            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                session.setAttribute("login","ok");
                session.setAttribute("uname",username);
%>
<%--
    Statement stmt = conn.createStatement();
    String sql = "select * from users where username='" + username + "'";
    sql += " and password = '" + password + "'";
    ResultSet rs = stmt.executeQuery(sql);
--%>
                <jsp:forward page="main.jsp"/>
<%
            }
            else
                out.println("错误的用户名和密码");
                out.println("<a href=index_1.html>返回</a>");
        }catch (Exception ee){
            ee.printStackTrace();
        }
    }
    else{
        out.println("请先登录！");
        out.println("<a href=index_1.html>返回</a>");
    }
%>

</body>
</html>
