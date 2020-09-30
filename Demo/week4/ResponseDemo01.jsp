<%@page contentType = "text/html;charset=utf-8"%>
<%@page import="java.util.*"%>
<%
    Enumeration enu = request.getHeaderNames();
    while(enu.hasMoreElements()){
        String name = (String)enu.nextElement();
%>

<h3><%=name%> --> <%=request.getHeader(name)%></h3>

<%
    }
%>