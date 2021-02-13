package com.Sample.Project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Model.User;

@WebServlet(name="DatabaseLogin", urlPatterns = "/DatabaseLogin")

public class DatabaseLogin extends HttpServlet
{ 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		User u=new User();
		
		u.setUsername(req.getParameter("user"));
		u.setPassword(req.getParameter("pass"));
		PrintWriter out= resp.getWriter();
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
			PreparedStatement statement = connect.prepareStatement("select * from user where Username=? and Password=?");
			statement.setString(1, u.getUsername());
			statement.setString(2, u.getPassword());
			ResultSet result =statement.executeQuery();
			HttpSession session=req.getSession();
			if(result.next())
			{	
				u.setUsername(result.getString("Username"));
				u.setEmail(result.getString("Email"));
				session.setMaxInactiveInterval(60*2);
				session.setAttribute("u", u);
				
				Cookie ck1=new Cookie("un", u.getUsername());
				Cookie ck2=new Cookie("pwd", u.getPassword());
				
				ck1.setMaxAge(30);
				ck2.setMaxAge(30);
				
				resp.addCookie(ck1);
				resp.addCookie(ck2);
				
				out.println(""
						+ "<script>"
						+ "alert('Welcome "+u.getUsername()+"');"
						+ "</script>");
				resp.sendRedirect("index.jsp");
				
			}
			else
			{
						out.println("<script>alert('Invlaid login Credentials');</script>");
						resp.sendRedirect("Login.jsp");
			}
			
		} 
		 catch (Exception e) 
		{
			 System.out.println(e);
		}
	}
}
