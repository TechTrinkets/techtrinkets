<%-- 
    Document   : search
    Created on : Nov 29, 2013, 1:43:55 PM
    Author     : Melissa
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
        <title>Search Results</title>
    </head>
    <body>
        
        <div id="container">

            <%@include file="header.jsp" %>
                        
            <div id="content">
                    
        <%
            SearchRequest sr = new SearchRequest();
            String searchterms = request.getParameter("searchterm");

            ArrayList<Product> result = sr.search(searchterms);
            
            if( result == null)
                out.println("<p>Sorry your search didn't return any products.</p>");
            else
            {
                out.println("<p>Results:</p> <table> <tr>");
                for(Product p: result)
                {
                    out.println("<td>");
                    out.println("<a href=controller?product="+p.getPID()+"><img src='images/"+
                           p.getImage()+"'/></a> <br /><br />");
                    out.println(p.getName()+"<br />");
                    out.println(p.getPrice()+"<br />");
                    %>
                    <form action="controller?action=addtocart&PID=<%=p.getPID()%>" method="post">
                    <input type="submit" value="Add to Cart" id="add"/>
                    </form>
                    <%
                out.println("<td>");
                }
                out.println("</tr></table>");
            }
        %>    
            
            </div>

            <div id="footer">
                Copyright 2013 Tech Trinkets, Inc. All Rights Reserved. User Agreement and Privacy Policy.</div>
        </div>
        
    </body>
</html>
</jsp:useBean>
