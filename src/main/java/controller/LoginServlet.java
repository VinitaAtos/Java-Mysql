package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import model.user;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			process(request,response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			process(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

		protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException {
			String username=request.getParameter("userId");
			String password=request.getParameter("password");
			System.out.println(username + "\t" + password);
			Connection con=DBConnection.getMySqlConnection();
			ResultSet rs = null;  
			String sql =
			               "select * from user where username='"
			                        + username
			                        + "' AND password='"
			                        + password
			                        + "'";
				Statement st=con.createStatement();
				rs=st.executeQuery(sql);
				
				System.out.println("Username:"+username);
				System.out.println("Password"+password);
				
				if(rs.next()== true)
				{
					HttpSession ht=request.getSession(true);
					ht.setAttribute("user", username);
					ht.setMaxInactiveInterval(30*60);
					RequestDispatcher rd=getServletContext().getRequestDispatcher("/home.jsp");
					rd.forward(request, response);
				}
				else if(rs.next()==false)
				{
					RequestDispatcher rd=getServletContext().getRequestDispatcher("/index.jsp");
					rd.include(request, response);
					response.getWriter().print("<H1>Invalid username & password</H1>");
				}
				
				}
				
		
		
}
