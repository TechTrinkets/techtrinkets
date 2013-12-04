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
                    Product p = result.get(i);
                    
                    out.println("<td>");
                    out.println("<a href=productinfo.jsp?PID="+p.getPID()+"><img src='images/"+
                           p.getImage()+"' height=150px /> <br /><br />");
                    out.println(p.getName()+"</a><br />");
                    out.println("$" + p.getPrice()+"<br />");
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
