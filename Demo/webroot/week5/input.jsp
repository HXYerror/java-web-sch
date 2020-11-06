<%@page contentType = "text/html;charset=utf-8"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<form action="input.jsp" method="POST">
    请输入内容：<input type="text" name="content">
    <input type="submit" value="说话">
</form>

<%
    request.setCharacterEncoding("utf-8");
    if(request.getParameter("content") != null){
        List all = null;
        all = (List)getServletContext().getAttribute("notes");
        if(all == null){
            all = new ArrayList();
        }
        all.add(request.getParameter("content"));
        getServletContext().setAttribute("notes",all);
    }
%>