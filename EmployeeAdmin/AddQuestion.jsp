<%@ include file="header.html" %>
<HTML>
	<HEAD>
		<TITLE>Add Question</TITLE>
	</HEAD>

	<body>
		<FORM action="./addquestion" method="POST">
			<center>
				<table border=0 width=50% height=50>
					<caption align="top">
						<font color="#4599bb"><h2>Add Question</h2>
						</font>
					</caption>
					<tr>
						<th></th>
						<th></th> 
						<th></th>
					</tr>
					<tr>
						<td width=43%>
							<p align=right>
								<font color="blue" size="4"><b>Question:</b>
								</font>
							</p>
						</td>
						<td>
							<p align=left>
								<font size=16>
									<textarea name="question" rows=5 cols=40></textarea>
								</font>
							</p>
						</td>
							<td></td>
					</tr>
					<tr></tr>
					<tr></tr>
					<tr>
						<td width=43%>
							<p align=right>
								<font color="blue" size="4"><b>Option1:</b>
								</font>
							</p>
						</td>
							<td>
								<p align=left>
									<input type=text style="font-size:16;" name="option1" size=40>
								</p>
							</td>
							<td></td>
					</tr>
					<tr></tr>
					<tr></tr>
					<tr>
						<td width=43%>
							<p align=right>
								<font color="blue" size="4"><b>Option2:</b>
								</font>
							</p>
						</td>
						<td>
							<p align=left>
								<input type=text style="font-size:16;" name="option2" size=40>
							</p>
						</td>
						<td></td>
					 </tr>
					<tr></tr>
					<tr></tr>
					<tr>
						<td width=43%>
							<p align=right>
								<font color="blue" size="4"><b>Option3:</b>
								</font>
							</p>
						</td>
						<td>
							<p align=left>
								<input type=text style="font-size:16;" name="option3" size=40>
							</p>
						</td>
						<td></td>
					</tr>
					<tr></tr>
					<tr></tr>
					<tr>
						<td width=43%>
							<p align=right>
								<font color="blue" size="4"><b>Option4:</b>
								</font>
							</p>
						</td>
						<td>
							<p align=left>
								<input type=text style="font-size:16;" name="option4" size=40>
							</p>
						</td>
						<td></td>
					</tr>
					<tr></tr>
					<tr></tr>
					<tr>
						<td width=43%>
							<p align=right>
								<font color="blue" size="4"><b>Correct Answer:</b>
								</font>
							</p>
						</td>
						<td>
							<p align=left>
							  <select name="answer">
								<option value=Option1>Option1</option>
								<option value=Option2>Option2</option>
								<option value=Option3>Option3</option>
								<option value=Option4>Option4</option>
							  </select>
							</p>
						</td>
						<td></td>
					</tr>
					<tr></tr>
					<tr></tr>
					<tr>
						<td width=43%>
							<p align=right>
								<font color="blue" size="4"><b>Language:</b>
								</font>
							</p>
						</td>
						<td>
						<p align=left>
							<select name="language">
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
					</tr>
					<tr></tr>
					<tr></tr>
					<tr>
						<td width=43%>
							<p align=right>
								<font color="blue"size="4"><b>Level:</b>
								</font>
							</p>
						</td>
						<td>
							<p align=left>
								<select name="level">
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
					</tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr>
						<td width=43%>
							<p align=right>
								<input type="submit" value="Add">
							</p>
						</td>
						<td>
							<p align=left>
								<input type="reset" value="Clear">
							</p>
						</td>
						<td></td>
					</tr>
				</table>
			</center>
		</form>
	</body>
</html>
<%@ include file="footer.html" %>