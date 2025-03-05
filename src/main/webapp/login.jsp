<%-- 
    Document   : login
    Created on : Feb 27, 2025, 1:12:18 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 11pt;
            margin: 2em;
            width: 400px;
        }
        h1 {
            color: teal;
            text-align: center;
        }
        label {
            float: left;
            width: 10em;
            text-align: right;
            margin-bottom: .5em;
        }
        input {
            width: 15em;
            margin-left: .5em;
            margin-bottom: 1em;
        }
        br {
            clear: both;
        }
        #submit {
            color: white;
            background: green;
            margin-left: 150px;
            border: 1px darkgreen solid;
            border-radius: 2px;
        }
        #submit:hover {
            background: gainsboro;
            color: darkgreen;
            cursor: pointer;
        }
        .checkbox {
            display: flex;
            justify-content: center;
            margin-left: 60px;
        }
        #rememberaccount {
            width: 15px;
        }
    </style>
</head>
<body>
    <form action="loginServlet" method="post">
        <label for="username"> Username: </label>
        <input type="text" name="username" id="username" value="${username}" required><br>

        <label for="password"> Password: </label>
        <input type="password" name="password" id="password" value="${password}" required><br>

        <div class="checkbox">
            <input type="checkbox" name="rememberaccount" id="rememberaccount"} >
            <label id="remember" for="rememberaccount" style="color: teal"> Remember me</label> <br>
        </div>

        <input type="submit" value="Login" id="submit">
    </form>
</body>
</html>
