<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Product Page</title>
    <style>
        /* General Page Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }

        /* Center Content */
        .container {
            max-width: 1000px;
            margin: 50px auto;
            padding: 20px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #0051a7;
            margin-bottom: 20px;
            font-size: 2em;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
        }

        /* Table Styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: #fff;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #3e638a;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        /* Footer Styles */
        footer {
            margin-top: 30px;
            padding: 20px;
            background-color: #3e638a;
            color: #fff;
            border-radius: 0 0 10px 10px;
        }

        footer h2 {
            margin-bottom: 10px;
        }

        footer ul {
            list-style: none;
            padding: 0;
        }

        footer li {
            margin: 5px 0;
        }

        footer a {
            color: #ffdd57;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Product Details</h1>

        <!-- Displaying product details in a table -->
        <%
        List<Map<String, Object>> products = (List<Map<String, Object>>) request.getAttribute("list");
        %>

        <table>
            <thead>
                <tr>
                    <th>Product Id</th>
                    <th>Product Name</th>
                    <th>Product Brand</th>
                    <th>Product Price</th>
                </tr>
            </thead>
            <tbody>
                <%
                for (Map<String, Object> product : products) {
                %>
                <tr>
                    <td><%=product.get("productId")%></td>
                    <td><%=product.get("productName")%></td>
                    <td><%=product.get("productBrand")%></td>
                    <td><%=product.get("productPrice")%></td>
                </tr>
                <%
                }
                %>
            </tbody>
        </table>

        <!-- Author Section -->
        <footer>
            <h2>Author</h2>
            <ul>
                <li><strong>Name:</strong> Priya Pritam Behera</li>
                <li><strong>GitHub:</strong> <a href="https://github.com/priyapritam" target="_blank">https://github.com/priyapritam</a></li>
                <li><strong>LinkedIn:</strong> <a href="https://www.linkedin.com/in/priyapritam" target="_blank">https://www.linkedin.com/in/priyapritam</a></li>
            </ul>
        </footer>
    </div>
</body>
</html>
