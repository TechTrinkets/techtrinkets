<%-- 
    Document   : recommend
    Created on : Dec 1, 2013, 5:25:50 PM
    Author     : Student_User
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="model.SearchRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="SearchRequest" class="model.SearchRequest">
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Recommendations</title>
        </head>
        <body>
            <div id="container">

                <%@include file="header.jsp" %>

                <div id="content">

                    <%

                        Integer pid = Integer.parseInt(request.getParameter("PID"));


                        SearchRequest sr = new SearchRequest();
                        Product p = sr.productInfo(pid);

                        if (p == null) {
                            out.println("<p>Cannot display item</p>");
                        } else {
                            out.println("<strong>" + p.getName() + "</strong> was just added to your shopping cart! <br /><br />");
                        }


                        ArrayList<Product> all_recommend = sr.search(p.getCategory()); //not working right :(
                        if (all_recommend != null) {

                            for (Product recommend : all_recommend) {
                                if (recommend.getPID() != p.getPID()) {
                                    out.println("<p>Customers who bought " + p.getName() + " also bought:</p>");

                                    out.println("<table> <tr><td>");
                                    out.println("<img src='images/" + recommend.getImage() + "' height=200px /> </td>");
                                    out.println("<td width=330px><h3>" + recommend.getName() + "</h3>" + recommend.getDescription() + "<br /><br />");
                                    out.println("<strong>$" + recommend.getPrice() + "</strong><br /><br />");
                                    if (recommend.getAvailable()) {
                                        out.println("<div style=\"color:green; font-size:12px\"> In stock </div>");
                    %>
                    <form action="controller?action=addtocart&PID=<%=recommend.getPID()%>" method="post">
                        <input type="submit" value="Add to Cart" id="add"/>
                    </form>

                    <%
                                    } else {
                                        out.println("<div style=\"color:red; font-size:12px\">Out of Stock</div>");
                                    }
                                    out.println("</td>");
                                    out.println("</tr></table>");
                                    return;
                                }
                                out.println("same");

                            }
                        } else {
                            out.println("recommend null");
                        }




                    %>  
                </div>
            </div>

            <%@include file="footer.jsp" %>
        </body>
    </html>
</jsp:useBean>
