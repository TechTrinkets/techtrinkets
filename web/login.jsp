<%-- 
    Document   : singin
    Created on : Nov 19, 2013, 1:21:11 PM
    Author     : Student_User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login to Account</title>


    </head>
    <body>

        <div id="container">

            <%@include file="header.jsp" %>

            <div id="content">

        <h2>Log in to your account:</h2>
        <form id="form1" action="controller?action=login" method="post">
            User Name: <input type="text" name="username" >
            <%
                if( request.getAttribute("loginerror") != null)
                {
                    out.println("<p id=\"error\">"+request.getAttribute("loginerror")+"<p>");
                }
            %>
            
            <br />
            Password: <input type="password" name="pwd" ><br />

            <input type="submit" value="Submit"> 
        </form>
            
            
        <h2>Forgot Password?</h2>    
        <form id="form2" action="controller?action=forgot" method="post">
            User Name: <input type="text" name="usernameforgot" >
            <%
                if( request.getAttribute("forgoterror") != null)
                {
                    out.println("<p id=\"error\">"+request.getAttribute("forgoterror")+"<p>");
                }
            %>
            <br/>
            <input type="submit" value="Forgot Password">
        </form>
        
        </div>


            <%@include file="footer.jsp" %>
        </div>

    </body>
</html>