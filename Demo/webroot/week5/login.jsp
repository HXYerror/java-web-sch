<%@page contentType = "text/html;charset=utf-8"%>
<h1>系统登陆</h1>
<form action="login.jsp" method="POST">
    用户名：<input type="text" name="name"><br>
    密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="password"><br>
    <input type="submit" value="登录">
</form>
<%
    String name = request.getParameter("name");
    String pass = request.getParameter("password");
    if(!(("".equals(name) || name == null) && ("".equals(pass) || pass==null))){
        if("abc".equals(name) && "123".equals(pass)){
            session.setAttribute("name",name);
            response.sendRedirect("welcome.jsp");
        }else{
%>

            <h3>错误的用户名和密码</h3>
<%
        }
    }
%>