<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Management Page</title>
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
            margin-bottom: 20px;
            font-size: 2em;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
        }

        a {
            text-decoration: none;
        }

        input[type="submit"] {
            background-color: #3e638a;
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin: 15px;
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
    <!-- Main content wrapped in a div -->
    <div class="container">
        <h1>Welcome To Product Management Page!!</h1>
        <a href="Add_Product.jsp"><input type="submit" value="ADD"></a>
        <a href="Display_Product"><input type="submit" value="DISPLAY"></a>

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
