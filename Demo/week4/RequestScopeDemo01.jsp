<%@page contentType = "text/html;charset=utf-8"%>
<%@page import="java.util.*"%>
<%
    request.setAttribute("name","TJPU");
    request.setAttribute("date",new Date());    
%>

<jsp:forward page="RequestScopeDemo02.jsp"/>