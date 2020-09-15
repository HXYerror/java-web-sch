<%
	int row = Integer.parseInt(request.getParameter("rows"));
	int col  = Integer.parseInt(request.getParameter("cols"));
%>

<table border="1" bordercolor="#445566" bgcolor ="#CCDDEE">
<%
	for(int i=0 ; i<row ; i++) {
%>
	<tr>
<%
	for (int j=0; j<col ; j++){
%>
	<td><%=i*j%></td>
<%
	}
%>
	</tr>
<%
	}
%>
</table>