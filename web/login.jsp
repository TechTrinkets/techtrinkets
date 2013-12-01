<%-- 
    Document   : singin
    Created on : Nov 19, 2013, 1:21:11 PM
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
        <h2>Log in to your account:</h2>
        <form action="controller?action=login" method="post">
            User Name: <input type="text" name="username"> <br />
            Password: <input type="password" name="pwd">
            <p><input type="submit" value="Submit"></p>
            
            <h2>Create a new account:</h2>
                
                <form action="#something">
                    First Name: <input type="input" name="firstName" alt="First Name" /> <br />
                    Last Name: <input type="input" name="lastName" alt="Last Name" /> <br />
                    Email: <input type="input" name="email" alt="Email Address" /> <br />
                    Password <input type="password" name="password" alt="Password" /> <br />
                    Retype Password: <input type="password" name="passwordconfirm" alt="Confirm Password" /> <br />
                    <input type="checkbox" name="terms" />I agree to the <a href="#terms">terms</a>. <br /><br />
                    <input type="submit" name="submit" alt="Submit" />
                </form>
        </form>
        
   </div>

            <div id="footer">
                Copyright 2013 Tech Trinkets, Inc. All Rights Reserved. User Agreement and Privacy Policy.</div>

        </div>

    </body>
</html>