<%-- 
    Document   : register
    Created on : Nov 19, 2013, 12:24:18 PM
    Author     : Student_User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tech Trinkets</title>
    </head>
    <body>

        <div id="container">

            <div id="header">
                Welcome, Guest - <a href="login.jsp">Sign In</a> - <a href="register.jsp">Register</a> - Shopping Cart (0) <hr />
            </div>
            <div id="logodiv">
                <a href="#home">
                    <img src="images/techtrinkets.png" id="logo" alt="Tech Trinkets" />
                </a>
            </div>
            <div id="search"> <br /><br />
                <form>
                    <input type="text" id="searchform" />&nbsp;
                    <input type="submit" value="Search!" id="searchbutton" alt="Search!" />
                </form>
            </div>
            <div id="menu">
                Browse By Type:
                <ul>
                    <li><a href="search.jsp?searchterm=tshirt">T-Shirts</a></li>
                    <li><a href="search.jsp?searchterm=gadgets">Gadgets</a></li>
                    <li><a href="search.jsp?searchterm=homeoffice">Home & Office</a></li>
                    <li><a href="search.jsp?searchterm=toys">Toys</a></li>
                    <li><a href="search.jsp?searchterm=clearance">Clearance</a></li>
                    <li><a href="search.jsp?searchterm=allproducts">All Products</a></li>
                </ul>
            </div>
            
        <div id="content">
            <h1>Register Here:</h1>
            <form action="controller?action=register" method="post">

                First Name: <input type="text" name="firstname">
                Last Name: <input type="text" name="lastname">
                <p>User Name: <input type="text" name="username"></p>

                <p>Email Address: <input type="text" name="email"></p>
                Confirm Email: <input type="text" name="confirmemail">

                <p>Phone Number: <input type="text" name="phonenumber"></p>

                <p>Street Address <input type="text" name="streetadd"></p>
                City <input type="text" name="city">
                State <input type="text" name="state">
                Zipcode <input type="text" name="zipcode">

                <p>Password: <input type="password" name="pwd"></p>
                <p>Confirm Password: <input type="password" name="confirmpwd"></p>

                <h2>This Information is used for password recovery</h2>
                <p>Secret Question: <input type="text" name="question"></p>
                <p>Secret Answer: <input type="text" name="answer"></p>

                <p><input type="submit" value="Register" name="action"></p>
            </form>
        
            
        <div id="footer">
                Copyright 2013 Tech Trinkets, Inc. All Rights Reserved. User Agreement and Privacy Policy.</div>
        </div>
    </body>
</html>
