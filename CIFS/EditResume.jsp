<%@ page import="java.sql.*" %>
<%@ include file="header.html" %>
<%
try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:test","scott","tiger");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from resume where username='"+(session.getAttribute("user")).toString()+"'");
if(rs.next())
{
%>
<h3><u>Edit your Profile</u></h3>
<form name="theForm" method="get" action="./editRes">
<br>
Resume Title:<input type="text" name="title" value="<%=rs.getString(2)%>"  size="65">
<br>
<br>
Name Of The User:<input type="text" name="name" value="<%=rs.getString(3)%>" size="59">
<br>
<br>
Address:<input type="text" name="address" value="<%=rs.getString(4)%>" size="70">
<br>
<br>
Email ID:<input type="text" name="email" value="<%=rs.getString(5)%>" size="70">
<br>
<br>
Tele Phone:<input type="text" name="phone" value="<%=rs.getString(6)%>" size="26">
Mobile No:<input type="text" name="mobile" value="<%=rs.getString(7)%>" size="26">
<br>
<br>
Degree/Diploma:<select name="degree" value="<%=rs.getString(8)%>">
<option value="be">BE<option value="btech">B.Tech
<option value="mtech">M.Tech<option value="mca">MCA
<option value="msc">M.Sc<option value="others">
Others</select>Others:<input type="text" name="otherdeg" value="<%=rs.getString(9)%>" size="20">
% Obtained<input type="text" name="degper" value="<%=rs.getString(10)%>" size="5">
<br>
<br>
Post Graduation:<select name="pg" value="<%=rs.getString(11)%>">
<option value="be">BE<option value="btech">B.Tech
<option value="mtech">M.Tech<option value="mca">MCA
<option value="msc">M.Sc<option value="others">
Others</select>Others:<input type="text" name="otherpg" value="<%=rs.getString(12)%>" size="20">
% Obtained<input type="text" name="pgper" value="<%=rs.getString(13)%>" size="5">
<br>
<br>
Skill Set:<textarea rows="3" name="skill" cols="53"><%=rs.getString(14)%></textarea>
<br>
<br>
Work Experiance:<textarea rows="4" name="workexp" cols="45"><%=rs.getString(15)%></textarea>
<br>
<br>
Project1 #:<textarea rows="5" name="pro1" cols="50"><%=rs.getString(16)%></textarea>
<br>
<br>
Project2 #:<textarea rows="5" name="pro2" cols="50" ><%=rs.getString(17)%></textarea>
<br>
<br>
Refferences Any:<textarea rows="3" name="ref" cols="45" ><%=rs.getString(18)%></textarea>
<br>
<br>
<br>
<%
}
else
{
out.println("Your Resume Not Found in our DataBase Sumbmit Your Resume First");
}
}catch(Exception e)
{

}
%>
<input type="submit" value="Update Resume">
</form>
<a href="LoginSucess.jsp">Go Home</a>
<br>
</body>
</html>
<%@ include file="footer.html" %>