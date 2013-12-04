<%-- 
    Document   : header
    Created on : Dec 4, 2013, 10:43:13 AM
    Author     : Student_User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>JSP Page</title>
    </head>
    <body>
        
               <div id="header">
                
                
                
                <%
                    if( session.getAttribute("loggedin") != null && session.getAttribute("loggedin").equals(true))
                    {
                        if(session.getAttribute("userid") != null)
                        {
                %>
                            Welcome, <a href="account.jsp"><%=session.getAttribute("userid")%></a>
                            - <a href="controller?action=logout">Sign Out</a>
                            - <a href="viewcart.jsp">Shopping Cart</a> <hr />
                <%          
                        }    
                    }
                    else
                    {
                %>
                        Welcome, Guest - <a href="login.jsp">Sign In</a> - <a href="register.jsp">Register</a>
                        - <a href="viewcart.jsp">Shopping Cart</a> <hr />
                <%  
                    } 
                %>
            </div>
            <div id="logodiv">
                <a href="index.jsp">
                    <img src="images/techtrinkets.png" id="logo" alt="Tech Trinkets" />
                </a>
            </div>
            <div id="search"> <br /><br />
                <form action="controller?action=search" method="post">
                    <input type="text" id="searchform" name="searchterm"/>
                    <input type="submit" value="Search" id="searchbutton"/>
                </form>
            </div>
            <div id="menu">
<<<<<<< HEAD
                Browse By Type:
                <ul>
                    <li><a href="search.jsp?searchterm=tshirt">T-Shirts</a></li>
                    <li><a href="search.jsp?searchterm=gadgets">Gadgets</a></li>
                    <li><a href="search.jsp?searchterm=home">Home & Office</a></li>
                    <li><a href="search.jsp?searchterm=toys">Toys</a></li>
                    <li><a href="search.jsp?searchterm=clearance">Clearance</a></li>
                    <li><a href="search.jsp?searchterm=allproducts">All Products</a></li>
=======
                Browse By Type:<br /><br />
                <a href="search.jsp?searchterm=tshirt">T-Shirts</a> <br />
                <a href="search.jsp?searchterm=gadgets">Gadgets</a><br />
                <a href="search.jsp?searchterm=homeoffice">Home & Office</a><br />
                <a href="search.jsp?searchterm=toys">Toys</a><br />
                <a href="search.jsp?searchterm=clearance">Clearance</a><br />
                <a href="search.jsp?searchterm=allproducts">All Products</a><br />
>>>>>>> 5c3a6bb91c1271839772a4566e480b66bd0ead95
                </ul>
            </div>
    </body>
</html>
