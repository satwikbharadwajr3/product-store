<%@page import="com.js.dto.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Delete Product by Brand</title>
    <style>
        /* The styling code remains the same as in the original example */
        /* ... */
    </style>
</head>
<body>
    <% Product p = (Product)request.getAttribute("pro"); %>
    <h1>Delete Product by Brand</h1>
    <form action="deletebrand" method="post">
        PRODUCT BRAND : <input type="text" name="brand" value="<%= p.getBrand()%>" ><br><br>
        <input type="submit" value="Delete Product">
    </form>
</body>
</html>
