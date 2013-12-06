<%-- 
    Document   : test
    Created on : Nov 27, 2013, 11:18:43 AM
    Author     : Rissy
--%>

<%@page import="model.User"%>
<%@page import="model.UserRequest"%>
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
                <h2>Account Information</h2>
                
                <%
                    UserRequest ur = new UserRequest();
                    if( session.getAttribute("loggedin").equals(true))
                    {
                        String username = (String)session.getAttribute("userid");
                        User u = ur.getUser(username);
                        
                        out.println("<li>"+u.getFirstName()+"</li>");
                        out.println("<li>"+u.getLastName()+"</li>");
                        out.println("<li>"+u.getStreetAddress()+"</li>");
                        out.println("<li>"+u.getCity()+"</li>");
                        out.println("<li>"+u.getState()+"</li>");
                        out.println("<li>"+u.getEmail()+"</li>");
                        out.println("<li>"+u.getUID()+"</li>");
                        out.println("<li>"+u.getZipCode()+"</li>");
                        out.println("<li>"+u.getPhoneNumber()+"</li>");
                        
                        
                    }
                    else
                    {
                        out.println("<p>You are not logged in!</p>");
                    }
                    
                %>
                
            
            </div>

            <div id="footer">
                Copyright 2013 Tech Trinkets, Inc. All Rights Reserved. User Agreement and Privacy Policy.</div>

        </div>

    </body>
</html>
