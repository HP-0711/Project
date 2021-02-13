package com.Sample.Project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.User;

@WebServlet(name="AddToCart",urlPatterns = "/AddToCart")
public class AddToCart extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		HttpSession hs  = req.getSession();
		
		int productid      = Integer.parseInt(req.getParameter("Id"));
		int quantity    = Integer.parseInt(req.getParameter("quantity"));
		String username = ((User)hs.getAttribute("u")).getUsername();
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Account","root","root");
			
			PreparedStatement ps1 = con.prepareStatement("select * from Cartitems where Bookid=? and Username=?");
			ps1.setInt(1,productid);
			ps1.setString(2,username);
			
			ResultSet rs=ps1.executeQuery();
			if(rs.next())
			{
				PrintWriter out=resp.getWriter();
				out.println(""
						+ "<script>"
						+ "alert('item is already there in the cart. Goto cart page and check');"
						+ "window.location='Cart.jsp';"
						+ "</script>");
			}
			else
			{
				PreparedStatement ps2 = con.prepareStatement("insert into Cartitems (bookid,username,quantity) values(?,?,?)");
				ps2.setInt(1, bookid);
				ps2.setString(2, username);
				ps2.setInt(3, quantity);
				ps2.executeUpdate();
			
				PrintWriter out=resp.getWriter();
				
				out.println(""
					+ "<script>"
					+ "alert('cart item added successfully!!!');"
					+ "window.location='Cart.jsp';"
					+ "</script>");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}

}

