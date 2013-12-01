<%-- 
    Document   : test
    Created on : Nov 27, 2013, 11:18:43 AM
    Author     : Rissy
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="model.SearchRequest"%>
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
                
                <%
                    if( session.getAttribute("loggedin") != null)
                    {
                        if( session.getAttribute("loggedin").equals(true) &&
                                session.getAttribute("userid") != null)
                        out.print("Welcome, "+session.getAttribute("userid"));
                    }
                    else
                    {
                %>    
                Welcome, Guest - <a href="login.jsp">Sign In</a> - <a href="register.jsp">Register</a>- Shopping Cart (0) <hr />
                <%  } %>
            </div>
            <div id="logodiv">
                <a href="#home">
                    <img src="images/techtrinkets.png" id="logo" alt="Tech Trinkets" />
                </a>
            </div>
            <div id="search"> <br /><br />
                <form action="controller?action=search" method="post">
                    <input type="text" id="searchterm" />
                    <input type="submit" value="Search" id="searchbutton"/>
                </form>
            </div>
            <div id="menu">
                Browse By Type:
                <ul>
                    <li><a href="search.jsp?searchterm=tshirt">T-Shirts</a></li>
                    <li><a href="search.jsp?searchterm=appliances">Appliances</a></li>
                    <li><a href="search.jsp?searchterm=homeoffice">Home & Office</a></li>
                    <li><a href="search.jsp?searchterm=toys">Toys</a></li>
                    <li><a href="search.jsp?searchterm=clearance">Clearance</a></li>
                    <li><a href="search.jsp?searchterm=allproducts">All Products</a></li>
                </ul>
            </div>
            <div id="content">
                Featured item:
               
            <%
              SearchRequest sr = new SearchRequest();
              Product one = sr.productInfo(100);
              if(one == null)
                  out.println("<p>Cannot display item</p>");
              else
              {
                out.println("<li>"+one.getName()+"</li>");
                out.println("<li>"+one.getPrice()+"</li>");
                out.println("<li>"+one.getCategory()+"</li>");
                out.println("<li>"+one.getAvailable()+"</li>");
                out.println("<li>"+one.getPID()+"</li>");
              }
                            
            %>
            </div>

            <div id="footer">
                Copyright 2013 Tech Trinkets, Inc. All Rights Reserved. User Agreement and Privacy Policy.</div>

        </div>

    </body>
</html>
