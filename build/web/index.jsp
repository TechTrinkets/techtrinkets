<%-- 
    Document   : test
    Created on : Nov 27, 2013, 11:18:43 AM
    Author     : Rissy
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="model.SearchRequest"%>
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
                Featured item:
               
            <%
              SearchRequest sr = new SearchRequest();
              Product one = sr.productInfo(105);
              if(one == null)
                  out.println("<p>Cannot display item</p>");
              else
              {
                out.println("<li>"+one.getName()+"</li>");
                out.println("<li>"+one.getPrice()+"</li>");
                out.println("<li>"+one.getCategory()+"</li>");
                out.println("<li>"+one.getAvailable()+"</li>");
                out.println("<li>"+one.getPID()+"</li>");
                out.println("<li>"+one.getDescription()+"</li>");
              %>
              <form action="controller?action=addtocart&PID=<%=one.getPID()%>" method="post">
                  <input type="submit" value="Add to Cart" id="add"/>
              </form>
               
             <%
              }
                            
            %>
            </div>

            <div id="footer">
                Copyright 2013 Tech Trinkets, Inc. All Rights Reserved. User Agreement and Privacy Policy.</div>

        </div>

    </body>
</html>
