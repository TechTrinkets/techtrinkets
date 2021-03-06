
<%@page import="model.UserRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="UserRequest" class="model.UserRequest">
    <!DOCTYPE html>
    <html>
        <head>
            <link rel="stylesheet" type="text/css" href="style.css">
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Forgot Password</title>
        </head>
        <body>
            <div id="container">
                <%@include file="header.jsp" %>
                <div id="content">

                    <h1>Forgot Your Password?</h1>

                    <%
                        if (request.getParameter("answererror") != null) {
                            out.println("<p>" + request.getParameter("answererror") + "</p>");
                        }
                        if (request.getParameter("usernameforgot") != null) {
                            String username = request.getParameter("usernameforgot");
                            UserRequest rq = new UserRequest();
                            String sec_quest = rq.getSecQuest(username);
                            if (sec_quest == "") {
                    %>
                    <p>Invalid username. <a href="login.jsp">Try again.</a></p>
                    <%          } else {
                        out.println("Just Answer your secret question!");
                        out.println("<p>" + sec_quest + "</p>");
                    %>
                    <form action="controller?action=secretanswer&usernameforgot=<%=username%>" method="post">
                        Answer: <input type="text" name="answer">
                        <input type="submit" value="Submit">
                    </form>
                    <%
                            }
                        } else {
                            out.println("<p>Username not found</p>");
                        }

                    %>
                </div>
        </body>
    </html>
</jsp:useBean>
