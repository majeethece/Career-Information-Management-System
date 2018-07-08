<%@ include file="header.html" %>
<h3><u>Submit Your Profile</u></h3>
<form name="theForm" method="get" action="./resume">
<br>
Resume Title:<input type="text" name="title" size="65">
<br>
<br>
Name Of The User:<input type="text" name="name" value="" size="59">
<br>
<br>
Address:<input type="text" name="address" value="" size="70">
<br>
<br>
Email ID:<input type="text" name="email" value="" size="70">
<br>
<br>
Tele Phone:<input type="text" name="phone" value="" size="26">
Mobile No:<input type="text" name="mobile" value="" size="26">
<br>
<br>
Degree/Diploma:<select name="degree">
<option value="be">BE<option value="btech">B.Tech
<option value="others">Others</select>
Specify if Others:<input type="text" name="otherdeg" value="" size="20">
% Obtained<input type="text" name="degper" value="" size="5">
<br>
<br>
Post Graduation:<select name="pg">
<option value="mtech">M.Tech<option value="mca">MCA
<option value="msc">M.Sc<option value="others">
Others</select>
Specify if Others:<input type="text" name="otherpg" value="" size="20">
% Obtained<input type="text" name="pgper" value="" size="5">
<br>
<br>
Skill Set:<textarea rows="3" name="skill" cols="53"></textarea>
<br>
<br>
Work Experiance:<textarea rows="4" name="workexp" cols="45"></textarea>
<br>
<br>
Project1 #:<textarea rows="5" name="pro1" cols="50"></textarea>
<br>
<br>
Project2 #:<textarea rows="5" name="pro2" cols="50"></textarea>
<br>
<br>
Refferences Any:<textarea rows="3" name="ref" cols="45"></textarea>
<br>
<br>
<br>
<input type="submit" value="Submit"><input type="reset" value="Reset">
</form>
<a href="LoginSucess.jsp">Go Home</a>
<br>
</body>
</html>
<%@ include file="footer.html" %>