<%-- 
    Document   : forgotpassword
    Created on : Nov 21, 2013, 12:37:25 PM
    Author     : Student_User
--%>

<%@page import="model.UserRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="UserRequest" class="model.UserRequest">
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
            
        <h1>Forgot Your Password?</h1>
        Just Answer your secret question!
        
        <%
            UserRequest rq = new UserRequest(); //need the username? to make this request
            out.println("<p>"+rq.requestQuestion()+"</p>");
        %>
        <form action="controller?action=secretanswer" method="post">
            Answer: <input type="text" name="answer">
            <input type="submit" value="Submit">
        </form>
            </div>
        <div id="footer">
                Copyright 2013 Tech Trinkets, Inc. All Rights Reserved. User Agreement and Privacy Policy.</div>

        </div>
    </body>
</html>
</jsp:useBean>
