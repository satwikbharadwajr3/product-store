<%@page import="com.js.dto.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update Product Data</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            color: #333;
            margin: 20px;
        }

        h1 {
            color: #007bff;
            text-align: center;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        input[type="number"],
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <% Product p = (Product)request.getAttribute("pro"); %>
    <h1>Update your data</h1>
    <form action="update" method="get">
        PRODUCT ID : <input type="number" name="id" value="<%= p.getId()%>" readonly="readonly"><br><br>
        PRODUCT NAME : <input type="text" name="name" value="<%= p.getName()%>"><br><br>
        PRODUCT BRAND : <input type="text" name="brand" value="<%= p.getBrand()%>"><br><br>
        PRODUCT PRICE : <input type="number" name="price" value="<%= p.getPrice()%>"><br><br>
        PRODUCT QUANTITY : <input type="number" name="quantity" value="<%= p.getQuantity()%>"><br><br>

        <input type="submit" value="Update">
    </form>
</body>
</html>
