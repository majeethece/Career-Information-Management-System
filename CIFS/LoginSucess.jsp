 <%@ include file="header.html" %>
<br>
<h3>Welcome Your Account:<%= session.getAttribute("user") %></h3>
<br>
<br>
<a href="PostResume.jsp">Post Your Resume</a>
<br>
<a href="ViewResume.jsp">View Your Resume</a>
<br>
<a href="EditResume.jsp">Edit Your Resume</a>
<br>
<a href="OnlineTest.jsp">OnLine Test</a>
<br>
<a href="Logout.jsp">Logout Here</a>
<br>
<%@ include file="footer.html" %>
