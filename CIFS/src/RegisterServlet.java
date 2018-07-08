import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
public class RegisterServlet extends HttpServlet
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
PreparedStatement ps;
res.setContentType("text/html");
out=res.getWriter();
ps=con.prepareStatement("insert into Register(username,password,fname,lname,email,mobile,degree,spcl) values(?,?,?,?,?,?,?,?)");
ps.setString(1,""+req.getParameter("user"));
ps.setString(2,""+req.getParameter("pass"));
ps.setString(3,""+req.getParameter("first"));
ps.setString(4,""+req.getParameter("last"));
ps.setString(5,""+req.getParameter("email"));
ps.setString(6,""+req.getParameter("mobile"));
ps.setString(7,""+req.getParameter("degree"));
ps.setString(8,""+req.getParameter("spcl"));
ps.execute();
res.sendRedirect("./RegSuccess.jsp");
}catch(Exception e)
{
System.out.println(""+e);
res.sendRedirect("./RegFailed.jsp");
}//catch
}//service
}//class



