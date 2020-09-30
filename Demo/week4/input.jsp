<%@page contentType = "text/html;charset=utf-8"%>
<%
    request.setCharacterEncoding("utf-8");
    String str = request.getParameter("info");
    String var = request.getParameter("var");
%>

<h2>参数内容：<%=str%></h2>
<h2>参数内容：<%=var%></h2>