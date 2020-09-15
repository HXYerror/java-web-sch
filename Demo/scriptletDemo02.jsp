<%!
	public static final String DBDRIVER="oracle.jdbc.driver.OracleDriver";	
	public static final String DBURL="jdbc:oracle:thin:@localhost:1521:MYDB";

%>
<%
	out.print("<h1>DBDRIVER="+DBDRIVER+"</h1>");
	out.print("<h1>DBURL="+DBURL+"</h1>");
%>
