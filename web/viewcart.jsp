<%-- 
    Document   : viewcart
    Created on : Dec 2, 2013, 9:00:05 AM
    Author     : Student_User
--%>
<%@page import="java.text.NumberFormat"%>
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
                        NumberFormat nf = NumberFormat.getInstance();
                        nf.setMaximumFractionDigits(2);
                        nf.setMinimumFractionDigits(2);

                        for (int i : cartItems) {
                            Product p = sr.productInfo(i);
                            
                            out.println("<td><a href=productinfo.jsp?PID="+p.getPID()+">" + p.getName() + "</a></td>");
                            if (p.getAvailable()) {
                                out.println("<td><img src=\"images/check.png\" /></td>");
                            }
                            else {
                                out.println("<td><img src=\"images/x.png\" /></td>");
                            }
                            
                            out.println("<td>$" + nf.format(p.getPrice()) + "</td>");
                            subtotal += p.getPrice();
                            out.println("<form action=\"controller?action=delete method=\"post\" >");
                            out.println("<td><p><input type\"submit\" value=\"Delete?\" name=\"action\" ></p></td>");
                            out.println("</form");
                            out.println("</tr>");
                        }
                %>

                <%
                        out.println("</table>");

                        out.println("<p>Subtotal: $" + nf.format(subtotal) +"</p>");

                %>        
                        <form action="controller?action=checkout" method="post">
                        <input type="submit" value="Check out"/>
                        </form>
                <%

                    } else
                        out.println("<h3>You have no items in your cart.</h3>");
                %>
                
            </div>

            <%@include file="footer.jsp" %>
        </div>

    </body>
</html>
