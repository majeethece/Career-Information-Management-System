<%@ include file="header.html" %>
<%@ page import="java.sql.*" %>
<br>
<table width="0" border=2 cellpadding="4" cellspacing="2">
<%
try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:test","scott","tiger");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from resume where username='"+(session.getAttribute("user")).toString()+"'");
if(rs.next())
{
%>
<h3><%=session.getAttribute("user")%>, User Profile</h3>
<tr><td><h3>Resume Title:<% out.println(""+rs.getString(2)); %> </h3></td></tr>
<tr><td>Name:<% out.println(""+rs.getString(3)); %> </td></tr>
<tr><td>Address:<% out.println(""+rs.getString(4)); %> </td></tr>
<tr><td>Email ID:<% out.println(""+rs.getString(5)); %> </td></tr>
<tr><td>Phone No:<% out.println(""+rs.getString(6)); %> </td></tr>
<tr><td>Mobile No:<% out.println(""+rs.getString(7)); %> </td></tr>
<tr><td>Qualification:<% out.println(""+rs.getString(8)); %> </td></tr>
<tr><td>Others:<% out.println(""+rs.getString(9)); %> </td></tr>
<tr><td>Aggregate:<% out.println(""+rs.getString(10)); %> </td></tr>
<tr><td>PG:<% out.println(""+rs.getString(11)); %></td></tr>
<tr><td>Other PG:<% out.println(""+rs.getString(12)); %> </td></tr>
<tr><td>Aggregate:<% out.println(""+rs.getString(13)); %> </td></tr>
<tr><td>Skills:<% out.println(""+rs.getString(14)); %></td></tr>
<tr><td>Experiance:<% out.println(""+rs.getString(15)); %> </td></tr>
<tr><td>Project1:<% out.println(""+rs.getString(16)); %></td></tr>
<tr><td>Project2:<% out.println(""+rs.getString(17)); %> </td></tr>
<tr><td>Refference:<% out.println(""+rs.getString(18)); %> </td></tr>
<%
} 
else
{
%>
<tr><td></td></tr>
<jsp:forward page="ResumeNotFound.jsp"/>
<%
}
%>
</table>
<%
}
catch(Exception e){}
%>
<br>
<a href="LoginSucess.jsp">Go Home</a>
<br>
<br>
<br>
<br>
<%@ include file="footer.html" %>