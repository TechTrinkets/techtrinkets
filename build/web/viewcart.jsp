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
                    out.println("Your Cart: <table>");
                    out.println("<tr><td><b>Product</b></td><td><b>In Stock?</b></td><td><b>Price</b></td></tr>");
                        
                    for(int i: cartItems)
                    {
                        Product p = sr.productInfo(i);
                        out.println("<tr><td>"+p.getName()+"</td>");
                        out.println("<td>"+p.getAvailable()+"</td>");
                        out.println("<td>$"+p.getPrice()+"</td>");
                        out.println("</tr>");
                    }
                %>
                <form action="controller?action=checkout" method="post">
                    <input type="submit" value="Check out"/>
                </form>
                <%
                    out.println("</table>");
                }
                else
                    out.println("<p>You have no items in your cart</p>");
                %>
        
            </div>

            <%@include file="footer.jsp" %>
        </div>

    </body>
</html>
