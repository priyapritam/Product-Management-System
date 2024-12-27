<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product Page</title>
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
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #0051a7;
            margin-bottom: 10px;
            font-size: 2em;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
        }

        h3 {
            color: #555;
            font-weight: normal;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        input[type="number"], input[type="text"] {
            width: 70%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
        }

        input[type="submit"] {
            background-color: #3e638a;
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin: 20px 0;
            border-radius: 5px;
            font-size: 1.2em;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <!-- Form for adding product details wrapped in a container -->
    <div class="container">
        <h1>Please Enter The Product Details:</h1>
        <h3>*Please fill all the details</h3>
        <form action="add-product" method="post">
            <input type="number" placeholder="Product Id" name="productId">
            <input type="text" placeholder="Product Name" name="productName">
            <input type="text" placeholder="Product Brand" name="productBrand">
            <input type="number" placeholder="Product Price" name="productPrice">
            <input type="submit" value="SAVE">
        </form>
    </div>
</body>
</html>
