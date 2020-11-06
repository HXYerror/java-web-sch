<%@page contentType = "text/html;charset=utf-8"%>

<%
    response.setHeader("refresh","2;URL=ResponseDemo01.jsp");
%>

<h2>本页面2秒后跳回到首页！</h2>
<h2>如果没有跳转，请按<a href="ResponseDemo01.jsp">这里</a>！</h2>
