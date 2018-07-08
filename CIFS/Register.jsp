<%@ include file="header.html" %>
<html>
<body>
<br>
<br>
<a href="index.jsp">Already Registered?Login Here</a>
<form action="./register" method="post">
<big>Login Details:</big>
<br>
Choose UserName *<input type="text" name="user" value=""> Should be <8 chars
<br>
Enter a PassWord  &nbsp *<input type="password" name="pass" value=""> Should be <8 chars
<br><br><br>
<big>Personal Details:</big>
<br>
First Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   *<input type="text" name="first" value=""> Should be <20 chars
<br>
Last Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    *<input type="text" name="last" value=""> Should be <30 chars
<br>
Email Address *<input type="text" name="email" value=""> Should be <30 chars
<br> Ex xxx@pavansoft.com
<br>
<br>
Mobile Number  *<input type="text" name="mobile" value="">  Should be <15 chars 

<br><br><br>
<big>Educational Details:</big>
<br>
Highest Degree    *<input type="text" name="degree" value=""> Should be <20 chars 
<br>
Specialization &nbsp;&nbsp; *<input type="text" name="spcl" value=""> Should be <20 chars 
<br>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Register Now">
<br>
<br>
<br>

All the fileds which are specified with * are mandatory
</form>
</body>
</html>
<%@ include file="footer.html" %>
