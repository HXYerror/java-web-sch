<%@page contentType = "text/html;charset=utf-8"%>
<%@page import="java.util.*"%>
<%
    response.setHeader("refresh","2");
    request.setCharacterEncoding("utf-8");
    List all = (List)getServletContext().getAttribute("notes");
    if(all == null){
%>
        <h2>没有留言！</h2>
<%
    }else{
            Iterator iter = all.iterator();
            while(iter.hasNext()){
%>

        <h3><%=iter.next()%></h3>
<%
            }
%>
<%
        }
%>