<%@ include file="header.html" %>
<%@ page import="java.sql.*,java.lang.*"%>

<%!
	String user="";
	ResultSet rs2=null;
	String answers[]=new String[150];
	int levelcount=0;
	int per=0;
	int noofquestions=0;
%>

<%
	user=(session.getAttribute("user")).toString();
	out.println("<h3>"+user+", Congrats! Your Skillset is Matching our criteria</h3>");
%>

<%
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:test","scott","tiger");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select distinct testlevel from questions order by testlevel");
	int l=1;
	while(rs.next())
	{	l=l+1;		}
	levelcount=l-1;
	rs.close();	
	
	ResultSet rs1=st.executeQuery("select count(*) from questions where testlevel='level1'");
	while(rs1.next())
	{	noofquestions=rs1.getInt(1);	}
	rs1.close();	

	if(levelcount==0)
	{	out.println("Sorry for the Inconvenience ! Question Database is not Availbale");	}
	else
	{
%>
	<b><u><i>	level1 Of level<%=levelcount%></i></u></b>
	<form action="OnlineTest1.jsp">
	<table border=1>
	<th>Q.No.</th><th>Question</th><th>Option1</th><th>Option2</th>
	<th>Option3</th><th>Option4</th><th>Answer</th>
	
<%
	rs2=st.executeQuery("select question,option1,option2,option3,option4,answer from questions where testlevel='level1'");	
	int k=1;
	while(rs2.next())
	{
%>
		<tr>
		<td><%=k%></td>
		<td><%=rs2.getString(1)%></td>
		<td><%=rs2.getString(2)%></td>
		<td><%=rs2.getString(3)%></td>
		<td><%=rs2.getString(4)%></td>
		<td><%=rs2.getString(5)%></td>
		<td><select name="answer<%=k%>">
		<option value="Option1">Option1
		<option value="Option2">Option2
		<option value="Option3">Option3
		<option value="Option4">Option4
		</select></td>
		</tr>
<%
		answers[k]=rs2.getString(6);
		k=k+1;
	}
%>
	</table>
	<br><br>
	<input type="submit" name="submit1" value="Submit">
	</form>

<%
	rs2.close();
	}
	con.close();
}
catch(Exception e){}
%>

<%
String ans="";
int marks=0;
if(request.getParameter("submit1")!=null)
{
	for(int i=1;i<=noofquestions;i++)
	{
		ans=request.getParameter("answer"+i);
		if(answers[i].equals(ans))
			marks+=1;		
	}
	per=(marks*100)/noofquestions;
	if(per>=70)
	{
	try
	{		
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:odbc:test","scott","tiger");
		PreparedStatement ps=con.prepareStatement("insert into result values(?,?,?)");
					System.out.println("prepare statement created");
		ps.setString(1,user);
		ps.setString(2,"level1");
		ps.setInt(3,per);
		int i=ps.executeUpdate();
%>
		<jsp:forward page="OnlineTest2.jsp"/>
<%
	}
	catch(Exception e){}
	}	
	else
	{
%>
		<jsp:forward page="LevelFailed.jsp"/>
<%
	}
}
%>

<br>
<a href="LoginSucess.jsp">Go Home</a>
<br><br><br><br>
<%@ include file="footer.html" %>