<%@page contentType = "text/html;charset=utf-8"%>
<%
    request.setCharacterEncoding("utf-8");
    String name  = request.getParameter("name");
    String[] inst = request.getParameterValues("inst");
%>

<h2>姓名：<%=name%></h2>
<h2>兴趣:
<%
    for(int i = 0;i < inst.length;i++){
%>
        <%=inst[i]%>,
<%
    }
%>

</h2>