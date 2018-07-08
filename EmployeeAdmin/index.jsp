<%@ include file="header.html" %>
<HTML>
	<HEAD>
		<TITLE>Login</TITLE>
	</HEAD>

	<body>
		<form action="./login" method="post">
			<center>
				<table border=0 width=50% height=50>
					<caption align="top">
						<font color="#4599bb">
							<h2>Login</h2>
						</font>
					</caption>
					<tr>
						<td width=43%>
							<p align=right>
								<font color="blue" size="4">
									<b>User Name:</b>
								</font>
							</p>
						</td>
						<td>
							<p align=left>
									<input type="text" name="userName">
							</p>
						</td>
					</tr>
					<tr>
					</tr>
					<tr>
					</tr>
					<tr>
						<td width=43%>
							<p align=right>
								<font color="blue" size="4">
									<b>PassWord:</b>
								</font>
							</p>
						</td>
						<td>
							<p align=left>
									<input type="password" name="password">
							</p>
						</td>
					</tr>
					<tr>
					</tr>
					<tr>
					</tr>
					<tr>
						<td width=43%>
							<p align=right>
								<input type="submit" value="Sign Up">
							</p>
						</td>
						<td>
							<p align=left>
								<input type="reset" value="Clear">
							</p>
						</td>
					</tr>
					<tr>
					</tr>
					<tr>
					</tr>
				</table>
			</center>
		</form>
	</body>
</html>
<%@ include file="footer.html" %>