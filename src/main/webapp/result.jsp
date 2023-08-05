<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
  body {
    background-color: #f0f0f0; /* Light gray background */
    font-family: Arial, sans-serif;
    color: #333; /* Dark gray text color */
    max-width: 400px; /* Set the maximum width of the content */
    margin: 0 auto; /* Center the content on the page horizontally */
    padding: 20px; /* Add some spacing around the content */
  }
  
  h1 {
    color: #008080; /* Teal heading color */
    text-align: center; /* Center the heading */
    margin-bottom: 30px; /* Add some spacing below the heading */
  }
</style>
</head>
<body>
<% String msg = (String)request.getAttribute("msg"); %>
<h1><%= msg %></h1>
</body>
</html>
