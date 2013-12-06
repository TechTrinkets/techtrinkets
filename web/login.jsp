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
                <h2>Login to your account:</h2>
                <form id="form2" action="controller?action=login" method="post">
                    User Name: <input type="text" name="username" >
                    <%
                        if (request.getAttribute("loginerror") != null) {
                            out.println("<div id=\"error\">" + request.getAttribute("loginerror") + "</div>");
                        }
                    %>

                    <br />
                    Password: <input type="password" name="pwd" ><br />

                    <input type="submit" value="Submit"> <button onclick="location.href = 'forgotpassword.jsp'">
                        Forgot Password?</button>
                </form>

            </div>

            <%@include file="footer.jsp" %>
        </div>

    </body>
</html>