<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        background-color: #f2f2f2; /* Set the background color for the entire page */
        font-family: Arial, sans-serif; /* Set the font family for the page */
    }

    h1 {
        color: #007BFF; /* Set the color of the heading "Enter your details" */
    }

    form {
        max-width: 400px; /* Set the maximum width for the form */
        margin: 0 auto; /* Center the form horizontally */
    }

    input[type="number"], input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    input[type="submit"] {
        background-color: #007BFF;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3; /* Change the background color on hover */
    }
</style>
</head>
<body>
<h1>Enter your details</h1>
    <form action="insert">
      
       PRODUCT ID : <input type="number" name="id"><br><br>
       PRODUCT NAME : <input type="text" name="name"><br><br>
       PRODUCT BRAND : <input type="text" name="brand"><br><br>
       PRODUCT PRICE : <input type="number" name="price"><br><br>
       PRODUCT QUANTITY : <input type="number" name="quantity"><br><br>
       
        <input type="submit" value="save">
    </form>
</body>
</html>
