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

<<<<<<< HEAD
            <%@include file="header.jsp" %>
                        
=======
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
                Welcome, Guest - <a href="login.jsp">Sign In</a> - <a href="register.jsp">Register</a>- 
                Shopping Cart (0) <hr />
                <%  } %>
            </div>
            <div id="logodiv">
                <a href="#home">
                    <img src="images/techtrinkets.png" id="logo" alt="Tech Trinkets" />
                </a>
            </div>
            <div id="search"> <br /><br />
                <form action="controller?action=search" method="post">
                    <input type="text" id="searchterm" name="searchterm"/>
                    <input type="submit" value="Search" id="searchbutton"/>
                </form>
            </div>
            <div id="menu">
                Browse By Type:
                <ul>
                    <li><a href="search.jsp?searchterm=tshirt">T-Shirts</a></li>
                    <li><a href="search.jsp?searchterm=gadgets">Gadgets</a></li>
                    <li><a href="search.jsp?searchterm=home">Home & Office</a></li>
                    <li><a href="search.jsp?searchterm=toys">Toys</a></li>
                    <li><a href="search.jsp?searchterm=clearance">Clearance</a></li>
                    <li><a href="search.jsp?searchterm=allproducts">All Products</a></li>
                </ul>
            </div>
>>>>>>> 431fa2434c1d81f24768b7abb19d7be35864365b
            <div id="content">
                Featured item:
               
            <%
              SearchRequest sr = new SearchRequest();
              Product one = sr.productInfo(105);
              if(one == null)
                  out.println("<p>Cannot display item</p>");
              else
              {
                out.println("<li>"+one.getName()+"</li>");
                out.println("<li>"+one.getPrice()+"</li>");
                out.println("<li>"+one.getCategory()+"</li>");
                out.println("<li>"+one.getAvailable()+"</li>");
                out.println("<li>"+one.getPID()+"</li>");
                out.println("<li>"+one.getDescription()+"</li>");
              %>
              <form action="controller?action=addtocart&PID=<%=one.getPID()%>" method="post">
                  <input type="submit" value="Add to Cart" id="add"/>
              </form>
               
             <%
              }
                            
            %>
            </div>

            <div id="footer">
                Copyright 2013 Tech Trinkets, Inc. All Rights Reserved. User Agreement and Privacy Policy.</div>

        </div>

    </body>
</html>
