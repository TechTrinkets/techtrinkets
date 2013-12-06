<%-- 
    Document   : viewcart
    Created on : Dec 2, 2013, 9:00:05 AM
    Author     : Student_User
--%>

<%@page import="java.util.Collections"%>
<%@page import="java.util.Arrays"%>
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
                    double subtotal = 0.0;
                    if (session.getAttribute("cartitems") != null) {
                        ArrayList<Integer> cartItems = (ArrayList<Integer>) session.getAttribute("cartitems");
                        
                        SearchRequest sr = new SearchRequest();
                        out.println("<h2>Your Cart:</h2><table id=\"cart\">");
                        out.println("<tr id=\"cartheader\"><td>Product</td><td>In Stock?</td><td>Price</td><td></td></tr>");
                        Collections.sort(cartItems);
                        
                        for (int i : cartItems) {
                            Product p = sr.productInfo(i);
                            
                            out.println("<td><a href=productinfo.jsp?PID="+p.getPID()+">" + p.getName() + "</a></td>");
                            if (p.getAvailable()) {
                                out.println("<td><img src=\"images/check.png\" /></td>");
                            }
                            else {
                                out.println("<td><img src=\"images/x.png\" /></td>");
                            }
                            out.println("<td>$" + p.getPrice() + "</td>");
                            subtotal += p.getPrice();
                            out.println("<td>Delete?</td>");
                            out.println("</tr>");
                        }
                %>

                <%
                        out.println("</table>");

                        out.println("<p>Subtotal: $" + subtotal +"</p>");

                %>        
                        <form action="controller?action=checkout" method="post">
                        <input type="submit" value="Check out"/>
                        </form>
                <%

                    } else
                        out.println("<p>You have no items in your cart</p>");
                %>
                
            </div>

            <%@include file="footer.jsp" %>
        </div>

    </body>
</html>
