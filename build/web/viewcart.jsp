<%-- 
    Document   : viewcart
    Created on : Dec 2, 2013, 9:00:05 AM
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
                    <li><a href="#tshirts">T-Shirts</a></li>
                    <li><a href="#Appliances">Appliances</a></li>
                    <li><a href="#homeoffice">Home & Office</a></li>
                    <li><a href="#toys">Toys</a></li>
                    <li><a href="#clearance">Clearance</a></li>
                    <li><a href="#allproducts">All Products</a></li>
                </ul>
            </div>

            <div id="content">
                List of Products in Cart goes here!!!! 
        
            </div>

            <div id="footer">
                Copyright 2013 Tech Trinkets, Inc. All Rights Reserved. User Agreement and Privacy Policy.</div>

        </div>

    </body>
</html>
