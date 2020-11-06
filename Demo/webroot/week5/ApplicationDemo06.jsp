<%@page contentType = "text/html;charset=utf-8"%>
<%@page import="java.io.*"%>
<h1></h1>
<%
    request.setCharacterEncoding("utf-8");
    String fileName = this.getServletContext().getRealPath("/") + "note" + File.separator + request.getParameter("fileName");
    File f = new File(fileName);
    BufferedReader buf = new BufferedReader(new InputStreamReader(new FileInputStream(f)));
    String str = buf.readLine();

%>
    <h3><%=str%></h3>
<%
    buf.close();
%>