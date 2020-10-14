<%@page contentType = "text/html;charset=utf-8"%>
<%@page import="java.io.*"%>
<h1></h1>
<%
    request.setCharacterEncoding("utf-8");
    String fileName = this.getServletContext().getRealPath("/") + "note";
    File f = new File(fileName);
    String files[] = f.list();
    for(int i = 0;i<files.length;i++){
%>
        <h3><a href="ApplicationDemo06.jsp?filename= <%=files[i]%>"><%=files[i]%>
        </a></h3>
<%
    }
%>