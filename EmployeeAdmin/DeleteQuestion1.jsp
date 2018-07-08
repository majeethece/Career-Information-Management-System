<%@ include file="header.html" %>
<%@page import="java.sql.*"%>

<%
	Connection connection;
	Statement statement;
	ResultSet resultset;
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	connection = DriverManager.getConnection("jdbc:odbc:test", "scott", "tiger");
	statement = connection.createStatement();
	java.util.ArrayList questions = new java.util.ArrayList();
	String sql = "SELECT QUESTION FROM QUESTIONS WHERE LANGUAGE='"+request.getParameter("language")+"' AND TESTLEVEL='"+request.getParameter("level")+"'";
	System.out.println("sql::" + sql);
	ResultSet questionResultSet = statement.executeQuery(sql);
	while (questionResultSet.next())
	{
			questions.add(questionResultSet.getString("QUESTION"));
	}
	session.setAttribute("questions", questions);	
%>

<HTML>
	<HEAD><TITLE>Delete Question</TITLE></HEAD>

	<body>
		<FORM action="./deletequestion" name="deletequestion" method="POST">
			<center>
				<table border=0 width=50% height=50>
					<caption align="top">
						<font color="#4599bb"><h2>Delete Question</h2>
						</font>
					</caption>
					<tr>
						<th></th>
						<th></th> 
						<th></th>
					</tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr>
						<td>
							<p align=right>
								<font color="blue"size="4"><b>Question:</b>
								</font>
							</p>
						</td>
						<td>
							<p align=left>
								<select name="question">
									<%	java.util.ArrayList questions1 = (java.util.ArrayList) request.getSession().getAttribute("questions"); 
										System.out.println("questions::"+questions);
										String question = "";
										if(questions.size()>0){
											for(int i=0; i<questions.size(); i++) {
												question = (String)questions.get(i);
									%>
									<option value="<%=question%>"><%=question%></option>
									<%
											}
										}
									%>
								</select>
							</p>
						</td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr></tr>
					<tr></tr>
					<tr>
						<td colspan=5>
							<p align=center>
								<input type="submit" name="delete" value="delete question">
							</p>
						</td>
					</tr>
					<tr></tr>
					<tr></tr>
				</table>
			</center>
		</form>
	</body>
</html>
<%@ include file="footer.html" %>