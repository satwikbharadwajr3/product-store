<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
    max-width: 400px; /* Set the maximum width of the form */
    margin: 0 auto; /* Center the form on the page horizontally */
    padding: 20px; /* Add some spacing around the form */
  }
  
  h1 {
    color: #008080; /* Teal heading color */
  }

  form {
    margin-top: 30px; /* Add some spacing between the heading and the form */
  }

  input[type="submit"] {
    background-color: #008080; /* Teal submit button background */
    color: #fff; /* White text color for the submit button */
    border: none; /* Remove the button border */
    padding: 10px 20px; /* Add some padding to the button */
    cursor: pointer; /* Show a hand cursor on hover */
    border-radius: 4px; /* Add rounded corners to the button */
  }

  input[type="submit"]:hover {
    background-color: #005555; /* Darker teal on hover */
  }
</style>
</head>
<body>
<h1>Enter your details</h1>
    <form action="register" method="post">
      
       ID : <input type="number" name="id"><br><br>
	   NAME : <input type="text" name="name"><br><br>
	   EMAIL : <input type="email" name="email"><br><br>
	   PASSWORD : <input type="password" name="password"><br><br>
	   PHONE : <input type="number" name="phone"><br><br>
	   
        <input type="submit" value="register">
    </form>
</body>
</html>
