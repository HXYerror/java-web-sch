<%--
  Created by IntelliJ IDEA.
  User: Hxy
  Date: 2020/11/1
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>checkvalid</title>
</head>
<body>
    <%
        if(session.getAttribute("login") == null || !session.getAttribute("login").equals("ok")){
            response.sendRedirect("index_1.html");//验证没通过
        }
    %>
</body>
</html>
