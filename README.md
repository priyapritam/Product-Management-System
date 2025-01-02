# Product Management System

A comprehensive Java-based web application for managing product details using servlets, JSP, and MySQL. This project demonstrates CRUD operations, JDBC integration, and a dynamic user interface for adding and displaying product details.



## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [System Requirements](#system-requirements)
- [Database Setup](#database-setup)
- [Screenshots](#screenshots)
- [How to Run](#how-to-run)
- [Code Walkthrough](#code-walkthrough)
  - [AddProductServlet.java](#addproductservletjava)
  - [DisplayProductServlet.java](#displayproductservletjava)
  - [JSP Pages](#jsp-pages)
- [Future Enhancements](#future-enhancements)
- [Author](#author)



## Introduction
The Product Management System is designed to simplify the management of products in a structured manner. It enables users to:
1. Add product information, such as ID, name, brand, and price.
2. Retrieve and display all the stored product information dynamically.

This project is suitable for educational purposes and serves as a practical example of how Java web applications interact with databases.



## Features
- **Add Product:** A form-based input system for adding products to the database.
- **Display Products:** A tabular view of all products fetched dynamically from the database.
- **Validation:** Minimal server-side validation for numerical and textual data.
- **Separation of Concerns:** Efficient use of servlets and JSP for backend and frontend processing.
- **Reusable Components:** Encapsulated code for database operations.



## Technologies Used
### Frontend
- HTML5
- JSP (Java Server Pages)
- CSS (for basic styling, if needed)

### Backend
- Java Servlets
- JDBC (Java Database Connectivity)

### Database
- MySQL

### Server
- Apache Tomcat (Version 9.0 or higher recommended)



## System Requirements
1. Java Development Kit (JDK): Version 8 or higher.
2. Apache Tomcat Server: Version 9.0 or higher.
3. MySQL Database: Version 5.7 or higher.
4. Integrated Development Environment (IDE): Eclipse/IntelliJ IDEA.
5. Web Browser: Any modern browser (Google Chrome, Firefox, Edge).



## Database Setup
Follow the steps below to set up the database:
1. **Create Database:**
    ```sql
    CREATE DATABASE product_management_db;
    ```
2. **Create Table:**
    ```sql
    CREATE TABLE product (
        productId INT PRIMARY KEY,
        productName VARCHAR(255),
        productBrand VARCHAR(255),
        productPrice INT
    );
    ```
3. **Test Connection:** Use tools like MySQL Workbench or command-line utilities to ensure the database is accessible.
4. **Credentials:** Update the following credentials in the servlet files (AddProductServlet.java and DisplayProductServlet.java):
    ```java
    DriverManager.getConnection("jdbc:mysql://localhost:3306/product_management_db", "root", "YourPassword");
    ```

## Screenshots

### Home Page:
<p align="center">
    <img height="50%" width="50%" src="https://github.com/priyapritam/Product-Management-System/blob/master/Index%20Page.png" alt="Home Page" style="max-width: 100%; height: auto;">
</p>

### Add Product Page:
<p align="center">
    <img height="70%" width="70%" src="https://github.com/priyapritam/Product-Management-System/blob/master/Add%20Product%20Page.png" alt="Home Page" style="max-width: 100%; height: auto;">
</p>

### Product List Page:
<p align="center">
    <img height="70%" width="70%" src="https://github.com/priyapritam/Product-Management-System/blob/master/Display%20Product%20Page.png" alt="Home Page" style="max-width: 100%; height: auto;">
</p>


## How to Run
1. **Clone the Repository:**
    ```bash
    git clone https://github.com/yourusername/ProductManagementSystem.git
    ```
2. **Import Project:**
   - Open the project in your preferred IDE.
   - Configure the project as a "Dynamic Web Project."
3. **Configure Server:**
   - Add Apache Tomcat Server to your IDE.
   - Deploy the project to the server.
4. **Run Application:**
   - Start the server.
   - Open the browser and navigate to:
     ```arduino
     http://localhost:8080/ProductManagement
     ```


## Code Walkthrough

### AddProductServlet.java

* **Purpose:** Handles POST requests for adding product details to the database.
* **Key Features:**
  * Establishes a connection to the MySQL database.
  * Uses a prepared statement to insert product data securely.
  * Closes the connection after the operation.

### DisplayProductServlet.java

* **Purpose:** Handles GET requests to fetch and display product details.
* **Key Features:**
  * Executes a query to retrieve all products from the database.
  * Converts the result set into a list of maps for easy rendering in JSP.
  * Passes the data to `Display_Product.jsp` for rendering.

### JSP Pages

1. **Add_Product.jsp:** A form for entering product details.
2. **Display_Product.jsp:** Displays product information in a tabular format.
3. **index.html:** Provides navigation links to add or display products.



## Future Enhancements

1. **Update and Delete Functionality:**
   * Allow users to modify or delete existing products.
2. **Search Functionality:**
   * Implement a search bar to find products by name or ID.
3. **Enhanced Validation:**
   * Add client-side and server-side validation for form inputs.
4. **Styling:**
   * Incorporate CSS or a frontend framework like Bootstrap for better UI design.
5. **Authentication:**
   * Add user authentication to restrict access to the application.

---

## Author

* **Name:** Priya Pritam Behera
* **GitHub:** [Your GitHub Profile](https://github.com/priyapritam)
* **LinkedIn:** [Your LinkedIn Profile](https://www.linkedin.com/in/priyapritam)

