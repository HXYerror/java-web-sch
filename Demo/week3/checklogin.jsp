<%@ page contentType="text/html; charset=gb2312" %>
<html>
    <body>
        <%--进行登录检查--%>
        <%
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            if(name.equals("hellking"))
            {
        %>
        <jsp:forward page="success.jsp">
            <jsp:param name = "user" value="<%=name%>"/>   
        </jsp:forward>
        <%
            }
            else 
            {
        %>
        <jsp:forward page="login.jsp">
            <jsp:param name="user" value="<%=name%>"/>
        </jsp:forward>
            <%}%>
    </body>
</html>