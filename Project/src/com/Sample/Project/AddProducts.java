package com.Sample.Project;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/AddProducts")
@MultipartConfig(maxFileSize = 9999999999L)
public class AddProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String query = "insert into products(Productname,Brand,MRP_Price,C_Price,S_Price,F_Image,B_Image,Quantity,Weight,Status) values(?,?,?,?,?,?,?,?,?,?)";
		String pname = request.getParameter("pname");
		String brand = request.getParameter("brand");
		String mrp = request.getParameter("mrp_price");
		String cp = request.getParameter("c_price");
		String sp = request.getParameter("s_price");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String weight = request.getParameter("weight");
	
		
		Part part=request.getPart("f_image");
		Part part1=request.getPart("b_image");
		
		InputStream is = part.getInputStream();
		InputStream is1 = part1.getInputStream();
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
			PreparedStatement statement=con.prepareStatement(query);
			
			statement.setString(1, pname);
			statement.setString(2, brand);
			statement.setString(3, mrp);
			statement.setString(4, cp);
			statement.setString(5, sp);
			statement.setBinaryStream(6, is);
			statement.setBinaryStream(7, is1);
			statement.setInt(8, quantity);
			statement.setString(9, weight);
			if(quantity > 0)
			{
			statement.setString(10,"Available");
			}
			else
			{
				statement.setString(10,"Not Available");
			}
			statement.executeUpdate();
			
			response.sendRedirect("index.jsp");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
