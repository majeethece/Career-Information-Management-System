import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.*;

public class LoginServlet extends HttpServlet {

	Connection connection;
	Statement statement;
	ResultSet resultset;
	PrintWriter out;
	public void init(ServletConfig config) 
	{
		String driver = config.getInitParameter("driver");
		String url = config.getInitParameter("url");
		String user = config.getInitParameter("user");
		String pass = config.getInitParameter("pass");

		try
		{
			Class.forName(driver);
			connection = DriverManager.getConnection(url, user, pass);
		}
		catch(Exception e) {System.out.println("Exception in init():" + e);	}//catch
	}//init

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try
		{
			System.out.println("in service");
			HttpSession session = request.getSession(true);
			response.setContentType("text/html");
			out = response.getWriter();
			statement = connection.createStatement();
			resultset = statement.executeQuery("SELECT USERNAME, PASSWORD FROM LOGIN WHERE USERNAME='"+request.getParameter("userName")+"' AND PASSWORD='"+request.getParameter("password")+"'");

			if(resultset.next()) 
			{
							System.out.println("in if");
				ResultSet languageResultSet = statement.executeQuery("SELECT LANGUAGE FROM LANGUAGES");
				ArrayList languages = new ArrayList();
				while (languageResultSet.next())
				{
					languages.add(languageResultSet.getString("LANGUAGE"));
				}
				session.setAttribute("languages", languages);
			System.out.println("in lang");
				ResultSet levelResultSet = statement.executeQuery("SELECT TESTLEVEL FROM LEVELS");
			System.out.println("rs"+levelResultSet );
				ArrayList levels = new ArrayList();
				while (levelResultSet.next())
				{
					levels.add(levelResultSet.getString("TESTLEVEL"));
				}
				session.setAttribute("levels", levels);
				System.out.println("in level");
				System.out.println("size::" + levels.size() + "::" + languages.size());
				response.sendRedirect("./LoginSuccess.jsp");
			} 
			else 	{				response.sendRedirect("./index.jsp");			}
		} 
		catch(Exception e) 
		{			System.out.println("login failed::" + e);		}//catch
	}//service
}//class