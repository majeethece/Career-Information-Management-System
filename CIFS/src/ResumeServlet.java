import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.lang.*;
public class ResumeServlet extends HttpServlet
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

HttpSession session=req.getSession(true);
String user=""+session.getAttribute("user");
System.out.println(""+user);

ps=con.prepareStatement("insert into Resume(username,restitle,resowner,address,email,phone,mobile,degree,othersdeg,degper,pg,otherpg,pgper,skills,workexp,projone,projtwo,refference) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,""+user);
ps.setString(2,""+req.getParameter("title"));
ps.setString(3,""+req.getParameter("name"));
ps.setString(4,""+req.getParameter("address"));
ps.setString(5,""+req.getParameter("email"));
ps.setString(6,""+req.getParameter("phone"));
ps.setString(7,""+req.getParameter("mobile"));
ps.setString(8,""+req.getParameter("degree"));
ps.setString(9,""+req.getParameter("otherdeg"));
ps.setString(10,""+req.getParameter("degper"));
ps.setString(11,""+req.getParameter("pg"));
ps.setString(12,""+req.getParameter("otherpg"));
ps.setString(13,""+req.getParameter("pgper"));
ps.setString(14,""+(req.getParameter("skill")).toLowerCase());
ps.setString(15,""+req.getParameter("workexp"));
ps.setString(16,""+req.getParameter("pro1"));
ps.setString(17,""+req.getParameter("pro2"));
ps.setString(18,""+req.getParameter("ref"));
ps.execute();
res.sendRedirect("./ResSuccess.jsp");
}catch(Exception e)
{
System.out.println(""+e);
res.sendRedirect("./ResFailed.jsp");
}//catch
}//service
}//class



