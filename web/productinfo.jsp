
<%@page import="model.Product"%>
<%@page import="model.SearchRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Product Information</title>
    </head>
    <body>
        <div id="container">

            <%@include file="header.jsp" %>

            <div id="content">
                <%
                    Integer PID = Integer.parseInt(request.getParameter("PID"));
                    SearchRequest sr = new SearchRequest();
                    Product one = sr.productInfo(PID);

                    if (one == null)
                        out.println("<p>Cannot display item</p>");
                    else {
                        out.println("<h2>" + one.getName() + "</h2></td></tr>");

                        out.println("<table> <tr><td>");
                        out.println("<img src='images/" + one.getImage() + "' height=200px /> </td>");
                        out.println("<td width=330px>" + one.getDescription() + "<br /><br />");
                        out.println("<strong>$" + one.getPrice() + "</strong><br /><br />");
                        if (one.getAvailable()) {
                            out.println("<div style=\"color:green; font-size:12px\"> In stock </div>");
                %>
                <form action="controller?action=addtocart&PID=<%=one.getPID()%>" method="post">
                    <input type="submit" value="Add to Cart" id="add"/>
                </form>

                <%
                        } else {
                            out.println("<div style=\"color:red; font-size:12px\">Out of Stock</div>");
                        }
                        out.println("</td>");
                        out.println("</tr></table>");
                    }

                %>
            </div>

            <%@include file="footer.jsp" %>

        </div>

    </body>
</html>
