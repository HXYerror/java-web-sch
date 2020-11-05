<%--
  Created by IntelliJ IDEA.
  User: Hxy
  Date: 2020/11/1
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="checkvalid.jsp"%>
<html>
<head>
    <title>continue</title>
</head>
<body>
<%
    String username = request.getParameter("uid");
    out.print("欢迎进入第二页面,您的用户名是"+username);
%>
</body>
</html>
