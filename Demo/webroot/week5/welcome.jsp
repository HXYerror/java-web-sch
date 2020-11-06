<%@page contentType = "text/html;charset=utf-8"%>
<%
    if(session.getAttribute("name") != null){
%>

        <h1>欢迎光临</h1>
        <h2><a href="logout.jsp">注销</a></h2>
<%
    }else{
%>

        <h1>请先<a href="login.jsp">登录</a>!</h1>
<%
    }
%>