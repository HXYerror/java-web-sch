<%@page contentType = "text/html;charset=utf-8"%>
<%@page import="java.io.*"%>
<h1></h1>
<%
    request.setCharacterEncoding("utf-8");
    String fileName = this.getServletContext().getRealPath("/") + "note" + File.separator + request.getParameter("fileName");
    String content = request.getParameter("content").replaceAll("\r\n","<br>");
    PrintStream ps = new PrintStream(new FileOutputStream(new File(fileName)));
    ps.println(content);
    ps.close();
%>