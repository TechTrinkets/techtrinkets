
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
        <title>View Cart</title>
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
                        out.println("<tr id=\"cartheader\"><td>Product</td><td>In Stock?</td><td id=\"price\">Price</td></tr>");
                        Collections.sort(cartItems);
                        NumberFormat nf = NumberFormat.getInstance();
                        nf.setMaximumFractionDigits(2);
                        nf.setMinimumFractionDigits(2);

                        for (int i : cartItems) {
                            Product p = sr.productInfo(i);

                            out.println("<td><a href=productinfo.jsp?PID=" + p.getPID() + ">" + p.getName() + "</a></td>");
                            if (p.getAvailable()) {
                                out.println("<td id=\"price\"><img src=\"images/check.png\" /></td>");
                            } else {
                                out.println("<td id=\"price\"><img src=\"images/x.png\" /></td>");
                            }
                            out.println("<td id=\"price\">$" + nf.format(p.getPrice()) + "</td>");
                            subtotal += p.getPrice();

                            out.println("</tr>");
                        }
                %>

                <%
                    out.println("</table>");

                    out.println("<p id=\"subtotal\">Total: $" + nf.format(subtotal) + "</p>");
                %>        
                <form action="controller?action=checkout" method="post">
                    <input type="submit" value="Check out" id="add"/>
                </form>
                <br /><br />
                <form action="search.jsp?searchterm=All" method="post">
                    <input type="submit" value="Continue Shopping" id="continueShopping"/>
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
