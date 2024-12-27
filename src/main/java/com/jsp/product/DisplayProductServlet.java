package com.jsp.product;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Servlet for displaying product details
@WebServlet("/Display_Product")
public class DisplayProductServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Connection conn = null;
		try {
			// Load JDBC driver and establish database connection
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/product_management_db", "root",
					"putt your own password");

			// Query to fetch all product details
			String query = "SELECT * FROM product";
			Statement st = conn.createStatement();
			ResultSet resultSet = st.executeQuery(query);

			// Create a list to store product details
			List<Map<String, Object>> products = new ArrayList();

			// Iterate over result set to populate product list
			while (resultSet.next()) {
				Map<String, Object> product = new HashMap<>();

				product.put("productId", resultSet.getInt(1));
				product.put("productName", resultSet.getString(2));
				product.put("productBrand", resultSet.getString(3));
				product.put("productPrice", resultSet.getInt(4));
				products.add(product);
			}

			// Set the product list as a request attribute and forward to JSP
			req.setAttribute("list", products);
			RequestDispatcher rd = req.getRequestDispatcher("Display_Product.jsp");
			rd.forward(req, resp);

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			// Ensure database connection is closed
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
