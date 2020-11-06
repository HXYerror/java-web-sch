<%--
  Created by IntelliJ IDEA.
  User: Hxy
  Date: 2020/11/1
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="checkvalid.jsp"%>
<html>
<head>
    <title>main</title>
</head>
<body>
<%
    String username = request.getParameter("uid");
    out.print("欢迎进入到本页面，您已经通过了验证,您的用户名是"+username+"\n");
%>
    <a href="continue.jsp?uid=<%=username%>" > 点击进入第二页面</a>
</body>
</html>
