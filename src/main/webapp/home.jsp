
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <style>
        /* CSS Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            overflow: hidden; /* Hide any overflow to prevent scrollbars */
            background: linear-gradient(to right, #008080, #006666); /* Dark teal gradient background */
            background-size: 200% 100%; /* Make the gradient wider to create animation effect */
            animation: backgroundAnimation 20s linear infinite; /* Add the background animation */
        }

        @keyframes backgroundAnimation {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

        h1 {
            color: #fff; /* White header color */
            text-align: center;
            padding: 20px;
        }

        h2 {
            text-align: center;
        }

        a {
            text-decoration: none;
            background-color: grey; /* Dark teal hyperlink background color */
            color: #fff; /* White text color for hyperlinks */
            padding: 10px 20px;
            border-radius: 5px;
            display: inline-block;
            margin: 10px;
        }

        a:hover {
            background-color: #006666; /* Slightly darker teal background on hover */
        }
    </style>
</head>
<body>
    <h1>WELCOME TO HOME PAGE</h1>

    <div style="text-align: center;">
        <h2><a href="product.jsp">ADD NEW PRODUCT</a></h2>
        <h2><a href="view">VIEW ALL PRODUCTS</a></h2>
        <h2><a href="product.jsp">DELETE BY BRAND</a></h2>
    </div>
</body>
</html>
