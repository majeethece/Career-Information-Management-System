<%@ page import="java.sql.*" %>
<%@ include file="header.html" %>

<h3>OnlineTest Results</h3>

<%
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:test","scott","tiger");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from result");

%>
	<table border=1>
	<th><font color=blue>UserId</th>
	<th><font color=blue>TestLevel</th>
	<th><font color=blue>Result(%)</th>
<%
	while(rs.next())
	{
%>
		<tr>
		<td><font color=green><b><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		</tr>	
<%
	}	
%>
	</table>
<%
}
catch(Exception e)
{
%>
	<jsp:forward page="ResumesNotFound.jsp"/>
<%
}
%>

<br>

<a href="LoginSuccess.jsp">Go Home</a>
<br>
<br>
<br>
<br>
<%@ include file="footer.html" %>


