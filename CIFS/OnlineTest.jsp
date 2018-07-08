<%@ include file="header.html" %>
<%@ page import="java.sql.*,java.lang.*" %>

<%!
	int resumeflag=0, skillmatched=0;
%>

<%
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:test","scott","tiger");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from resume where username='"+(session.getAttribute("user")).toString()+"'");
	resumeflag=0;	 skillmatched=0;
	if(rs.next())
	{ resumeflag=1;} 

	if(resumeflag==1)
	{
		ResultSet rs1=st.executeQuery("select language from languages");
		java.util.ArrayList langlist=new java.util.ArrayList ();
		while(rs1.next())
		{ langlist.add(rs1.getString(1));}
		for(int i=0;	 i<langlist.size();i++)
		{
				String a=(String)langlist.get(i);
				a=a.toLowerCase();
				ResultSet rs2=st.executeQuery("select skills from resume where username='"+(session.getAttribute("user")).toString()+"' and skills like '%"+a+"%'");
				if(rs2.next())	{	skillmatched=1;	break;}
				else{	 skillmatched=0;	}						
		}
		if(skillmatched==1)
		{	
%>
			<jsp:forward page="OnlineTest1.jsp"/>
<%
		}
		else out.println("<h3>Your Skillset is not Matching our criteria</h3>");
	}
	else
	{ 
%>
		<jsp:forward page="ResumeNotFound.jsp"/>
<%
	} 
}
catch(Exception e){}
%>
<br>
<a href="LoginSucess.jsp">Go Home</a>
<br><br><br><br>
<%@ include file="footer.html" %>