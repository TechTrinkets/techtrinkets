<%-- 
    Document   : test
    Created on : Nov 27, 2013, 11:18:43 AM
    Author     : Rissy
--%>

<%@page import="model.User"%>
<%@page import="model.UserRequest"%>
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
                <h2>Account Information</h2>
                
                <%
                    UserRequest ur = new UserRequest();
                    if( session.getAttribute("loggedin").equals(true))
                    {
                        String username = (String)session.getAttribute("userid");
                        User u = ur.getUser(username);
                    }
                    else
                    {
                        out.println("<p>You are not logged in!</p>");
                    }
                    
                    
                    
                %>
                
            
            </div>

            <div id="footer">
                Copyright 2013 Tech Trinkets, Inc. All Rights Reserved. User Agreement and Privacy Policy.</div>

        </div>

    </body>
</html>
