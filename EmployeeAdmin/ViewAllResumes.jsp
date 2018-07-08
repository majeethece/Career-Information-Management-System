<%@ page import="java.sql.*" %>
<%@ include file="header.html" %>
<h3>List Of Users</h3>

<%!	String user="";		%>

<%
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:test","scott","tiger");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from resume");
%>
	<table border=1>
	<th><font color=blue>userId</th>
	<th><font color=blue>Restitle</th>
	<th><font color=blue>Resowner</th>
	<th><font color=blue>Address</th>
	<th><font color=blue>Email</th>
	<th><font color=blue>Phone</th>
	<th><font color=blue>Mobile</th>
	<th><font color=blue>Degree</th>
	<th><font color=blue>OtherDeg</th>
	<th><font color=blue>Deg. Percentage</th>
	<th><font color=blue>Pg</th>
	<th><font color=blue>OtherPg</th>
	<th><font color=blue>Pg.Percentage</th>
	<th><font color=blue>Skills</th>
	<th><font color=blue>Work Experience</th>
	<th><font color=blue>Project One</th>
	<th><font color=blue>Project Two</th>
	<th><font color=blue>Refernce</th>
<%
	while(rs.next())
	{
%>
		<tr>
		<td><font color=green><b><h3><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><%=rs.getString(5)%></td>
		<td><%=rs.getString(6)%></td>
		<td><%=rs.getString(7)%></td>
		<td><%=rs.getString(8)%></td>
		<td><%=rs.getString(9)%></td>
		<td><%=rs.getString(10)%></td>
		<td><%=rs.getString(11)%></td>
		<td><%=rs.getString(12)%></td>
		<td><%=rs.getString(13)%></td>
		<td><%=rs.getString(14)%></td>
		<td><%=rs.getString(15)%></td>
		<td><%=rs.getString(16)%></td>
		<td><%=rs.getString(17)%></td>
		<td><%=rs.getString(18)%></td>
		</tr>
		<br>
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

<br><br><br><br>

<%@ include file="footer.html" %>


