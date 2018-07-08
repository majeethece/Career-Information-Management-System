<%@ include file="header.html" %>
<HTML>
<HEAD><TITLE>Employee Administration</TITLE></HEAD>

<body>
<form action="./login" method="post">
<center>
<table border=0 width=50% height=50>
	<caption align="top">
	<font color="#4599bb">
	<h2>Login Success</h2>
	</font></caption>

	<tr>	<td width=43% align=center>
		<p align=center><font color="blue" size="4">
				<b><a href="AddQuestion.jsp"><li><h3>Add Question</h3></b>
			</font></p>
	</td></tr>

	<tr>	<td width=43% align=center>
		<p align=right><font color="blue" size="4">
				<b><a href="DeleteQuestion.jsp"><li><h3>Delete Question</h3></b>
			</font></p>
	</td></tr>

	<tr>	<td width=43% align=center>
		<p align=right><font color="blue" size="4">
				<b><a href="ViewAllResumes.jsp"><li><h3>View All Resumes</h3></b>
			</font></p>
	</td></tr>

	<tr>	<td width=43% align=center>
		<p align=right><font color="blue" size="4">
				<b><a href="ViewAllResults.jsp"><li><h3>View Results</h3></b>
			</font></p>
	</td></tr>

	</table>	</center></form>
	</body>	</html>
<%@ include file="footer.html" %>