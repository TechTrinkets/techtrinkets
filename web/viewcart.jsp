<%-- 
    Document   : viewcart
    Created on : Dec 2, 2013, 9:00:05 AM
    Author     : Student_User
--%>

<%@page import="model.Product"%>
<%@page import="model.SearchRequest"%>
<%@page import="java.util.ArrayList"%>
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

            <%@include file="header.jsp" %>
                        
            <div id="content">

            
                <%
                  
                if( session.getAttribute("cartitems") != null)
                {
                    ArrayList<Integer> cartItems = (ArrayList<Integer>)session.getAttribute("cartitems");
                
                    SearchRequest sr = new SearchRequest();
                    for(int i: cartItems)
                    {
                        Product p = sr.productInfo(i);
                        out.println("<li>"+p.getName()+"</li>");
                        out.println("<li>"+p.getPrice()+"</li>");
                        out.println("<li>"+p.getCategory()+"</li>");
                        out.println("<li>"+p.getAvailable()+"</li>");
                        out.println("<li>"+p.getPID()+"</li>");
                    }
                %>
                <form action="controller?action=checkout" method="post">
                    <input type="submit" value="Check out"/>
                </form>
                <%
                    
                }
                else
                    out.println("<p>You have no items in your cart</p>");
                %>
        
            </div>

            <div id="footer">
                Copyright 2013 Tech Trinkets, Inc. All Rights Reserved. User Agreement and Privacy Policy.</div>

        </div>

    </body>
</html>
