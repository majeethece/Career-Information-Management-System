<%@ include file="header.html" %>

<HTML>
	<HEAD><TITLE>Delete Question</TITLE>	</HEAD>

	<body>
		<FORM action="DeleteQuestion1.jsp" name="deletequestion" method="POST">
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
					<tr>
						<td>
							<p align=right>
								<font color="blue" size="4"><b>Language:</b>
								</font>
							</p>
						</td>
						<td>
						<p align=left>
							<select name="language" onChange="displayQuestions()">
								<%	java.util.ArrayList languages = (java.util.ArrayList) request.getSession().getAttribute("languages"); 
									System.out.println("languages::"+languages);
									String language = "";
									for(int i=0; i<languages.size(); i++) {
										language = (String)languages.get(i);
								%>
								<option value="<%=language%>"><%=language%></option>
								<%
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
						<td>
							<p align=right>
								<font color="blue"size="4"><b>Level:</b>
								</font>
							</p>
						</td>
						<td>
							<p align=left>
								<select name="level" onChange="displayQuestions()">
									<%	java.util.ArrayList levels = (java.util.ArrayList) request.getSession().getAttribute("levels"); 
										System.out.println("levels::"+levels);
										String level = "";
										for(int i=0; i<levels.size(); i++) {
											level = (String)levels.get(i);
									%>
									<option value="<%=level%>"><%=level%></option>
									<%
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