package com.jsp.product;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Servlet for handling product addition
@WebServlet("/add-product")
public class AddProductServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// Retrieve product details from the form
		int productId = Integer.parseInt(req.getParameter("productId"));
		String productName = req.getParameter("productName");
		String productBrand = req.getParameter("productBrand");
		int productPrice = Integer.parseInt(req.getParameter("productPrice"));
		Connection conn = null;

		try {
			// Load JDBC driver and establish database connection
			Class.forName("com.mysql.cj.jdbc.Driver");

			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/product_management_db","root","putt your own password");

			// Prepare and execute SQL statement for inserting product data
			PreparedStatement pst = conn.prepareStatement("INSERT INTO product VALUES(?,?,?,?)");
			pst.setInt(1, productId);
			pst.setString(2, productName);
			pst.setString(3, productBrand);
			pst.setInt(4, productPrice);
			pst.executeUpdate();

			// Redirect to the main page after successful addition
			resp.sendRedirect("index.jsp");

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}finally {
			// Ensure database connection is closed
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

	}
}
