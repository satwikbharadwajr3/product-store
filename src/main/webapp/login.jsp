<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login Page</title>
    <style>
        /* CSS Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2; /* Light gray background color */
        }

        h1 {
            text-align: center;
            padding: 20px;
        }

        form {
            text-align: center;
            margin: 0 auto;
            max-width: 300px;
            padding: 20px;
            background-color: #fff; /* White form background */
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        form input[type="email"],
        form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        form input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #008080; /* Dark teal button background */
            color: #fff; /* White text color for the button */
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        form input[type="submit"]:hover {
            background-color: #006666; /* Slightly darker teal background on hover */
        }
    </style>
</head>
<body>
    <h1>Enter your details to login</h1>
    <form action="login" method="post">
        EMAIL: <input type="email" name="email"><br><br>
        PASSWORD: <input type="password" name="password"><br><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
