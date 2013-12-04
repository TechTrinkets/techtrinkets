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
        
>>>>>>> 5c3a6bb91c1271839772a4566e480b66bd0ead95
        <div id="container">

            <%@include file="header.jsp" %>
                        
            <div id="content">
                    
        <%
            SearchRequest sr = new SearchRequest();
            String searchterms = request.getParameter("searchterm");

            ArrayList<Product> result = sr.search(searchterms);
            int count = 0;
            
            if( result == null)
                out.println("<p>Sorry your search didn't return any products.</p>");
            else
            {
                int num = result.size();
                out.println("<p>Results for \"" +searchterms + "\":</p>");
                out.println("<table> <tr>");
                for(int i=0; i<num; i++)
                {
<<<<<<< HEAD
                    
                    Product p = result.get(i);
                    
                    out.println("<td>");
                    out.println("<a href=productinfo.jsp?PID="+p.getPID()+"><img src='images/"+
                           p.getImage()+"' height=150px /> <br /><br />");
                    out.println(p.getName()+"</a><br />");
                    out.println("$" + p.getPrice()+"<br />");
=======
<<<<<<< HEAD
                    //out.println("<a href=controller?product="+p.getPID()+"><img src='images/"+
                    //       p.getImagePath()+"'/></a>");
                    out.println("<li><a href='productinfo.jsp?PID="+p.getPID()+"'>"+p.getName()+"</a></li>");
                    out.println("<li>"+p.getPrice()+"</li>");
                    out.println("<li>"+p.getCategory()+"</li>");
                    out.println("<li>"+p.getAvailable()+"</li>");
                    out.println("<li>"+p.getPID()+"</li>");
                    out.println("<li>"+p.getDescription()+"</li>");
=======
                    out.println("<td>");
                    out.println("<a href=controller?product="+p.getPID()+"><img src='images/"+
                           p.getImage()+"'/></a> <br /><br />");
                    out.println(p.getName()+"<br />");
                    out.println(p.getPrice()+"<br />");
>>>>>>> 5c3a6bb91c1271839772a4566e480b66bd0ead95
>>>>>>> 2fbc726d6eb19a0ac7fc042011ead09e90406f2c
                    %>
                    <form action="controller?action=addtocart&PID=<%=p.getPID()%>" method="post">
                    <input type="submit" value="Add to Cart" id="add"/>
                    </form>
                    <%
                    out.println("</td>");
                    if ((i + 1) % 3 == 0)
                    {
                        out.println("</tr><tr>");
                    }
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
