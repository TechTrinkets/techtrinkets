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
<<<<<<< HEAD
=======
        <h1>Your Search Results:</h1>
>>>>>>> 431fa2434c1d81f24768b7abb19d7be35864365b
        
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
                out.println("<p>Result</p>");
                for(Product p: result)
                {
                    //out.println("<a href=controller?product="+p.getPID()+"><img src='images/"+
                    //       p.getImagePath()+"'/></a>");
                    out.println("<li>"+p.getName()+"</li>");
                    out.println("<li>"+p.getPrice()+"</li>");
                    out.println("<li>"+p.getCategory()+"</li>");
                    out.println("<li>"+p.getAvailable()+"</li>");
                    out.println("<li>"+p.getPID()+"</li>");
                    out.println("<li>"+p.getDescription()+"</li>");
                    %>
                    <form action="controller?action=addtocart&PID=<%=p.getPID()%>" method="post">
                    <input type="submit" value="Add to Cart" id="add"/>
                    </form>
                    <%
                }
            }
        %>    
            
            </div>

            <div id="footer">
                Copyright 2013 Tech Trinkets, Inc. All Rights Reserved. User Agreement and Privacy Policy.</div>
        </div>
        
    </body>
</html>
</jsp:useBean>
