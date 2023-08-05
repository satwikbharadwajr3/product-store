<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.js.dto.Product"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Table</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f0f0f0;
        }
        h1 {
            text-align: center;
            background-color: #007bff;
            color: #fff;
            padding: 10px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            background-color: #ffffff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
<h1>PRODUCT TABLE</h1>
<table border="10px">

<tr>
<th>ID</th>
<th>NAME</th>
<th>BRAND</th>
<th>PRICE</th>
<th>QUANTITY</th>
<th>DELETE</th>
<th>UPDATE</th>
</tr>

<% ArrayList<Product> al =  (ArrayList)request.getAttribute("data");%>

<% for(Product p : al){ %>
<tr>
<td> <%= p.getId() %></td>
<td> <%= p.getName() %></td>
<td> <%= p.getBrand() %></td>
<td> <%= p.getPrice() %></td>
<td> <%= p.getQuantity() %></td>
<td><a href="delete?id=<%= p.getId() %>">Delete</a>  </td>
<td><a href="edit?id=<%= p.getId() %>">edit</a>  </td>
</tr>
<% }%>


</table>
</body>
</html>
