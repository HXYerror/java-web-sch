<h1>includedemo04.jsp</h1>
<%!
    public static final String str="www.tjpu.edu.cn";
%>
<jsp:include page="content.jsp">
    <jsp:param name="ref1" value="Hello World!"/>
    <jsp:param name="ref2" value="<%=str%>"/>
</jsp:include>