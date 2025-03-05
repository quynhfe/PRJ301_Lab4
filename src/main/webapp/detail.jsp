<%-- 
    Document   : detail
    Created on : Feb 27, 2025, 1:13:25 PM
    Author     : ADMIN
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        button {
            padding: 10px 20px;
            margin: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .back {
            background-color: blue;
            color: white;
        }
        .logout {
            background-color: red;
            color: white;
        }
    </style>
</head>
<body>

    <h1>Welcome ${username}!</h1>

    <form action="displayName" method="post">
        <button type="submit" name="back" class="back">Back</button>
        <button type="submit" name="logout" class="logout">Logout</button>
    </form>

</body>
</html>
