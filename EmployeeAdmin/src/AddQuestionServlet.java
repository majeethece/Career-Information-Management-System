import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
public class AddQuestionServlet extends HttpServlet
{
Connection con;
Statement st;
ResultSet rs;
PrintWriter out;
public void init(ServletConfig conf)
{
String d=conf.getInitParameter("driver");
String ur=conf.getInitParameter("url");
String us=conf.getInitParameter("user");
String p=conf.getInitParameter("pass");
try{
Class.forName(d);
con=DriverManager.getConnection(ur,us,p);
}catch(Exception e)
{
System.out.println(""+e);
}//catch
}//init

public void service(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
{
try{
PreparedStatement ps = null;
PreparedStatement countStatement = null;
ResultSet countResultSet = null;

res.setContentType("text/html");
out=res.getWriter();
countStatement = con.prepareStatement("SELECT MAX(QNO) FROM QUESTIONS WHERE LANGUAGE = ? AND TESTLEVEL = ?");
countStatement.setString(1, req.getParameter("language"));
countStatement.setString(2, req.getParameter("level"));
countResultSet = countStatement.executeQuery();
int questionNo = 0;

if(countResultSet.next()) {
	questionNo = countResultSet.getInt(1) + 1;
} else {
	questionNo = 1;
}

ps=con.prepareStatement("INSERT INTO QUESTIONS(QNO, QUESTION, OPTION1, OPTION2, OPTION3, OPTION4, ANSWER, LANGUAGE, TESTLEVEL) values(?,?,?,?,?,?,?,?,?)");
ps.setInt(1, questionNo);
ps.setString(2,""+req.getParameter("question"));
ps.setString(3,""+req.getParameter("option1"));
ps.setString(4,""+req.getParameter("option2"));
ps.setString(5,""+req.getParameter("option3"));
ps.setString(6,""+req.getParameter("option4"));
ps.setString(7,""+req.getParameter("answer"));
ps.setString(8,""+req.getParameter("language"));
ps.setString(9,""+req.getParameter("level"));
ps.execute();
res.sendRedirect("./AddQuestionSuccess.jsp");
}catch(Exception e)
{
System.out.println(""+e);
res.sendRedirect("./AddQuestionFailed.jsp");
}//catch
}//service
}//class