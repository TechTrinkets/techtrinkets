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
                <%
                    UserRequest ur = new UserRequest();
                    if (session.getAttribute("loggedin").equals(true)) {
                        String username = (String) session.getAttribute("userid");
                        User u = ur.getUser(username);
                        out.println("<h2>" + u.getFirstName() + "'s Account Information: </h2>");
                %>
                <form action="controller?action=update" method="post">

                    First Name: <input type="text" name="firstname" value="<%=u.getFirstName()%>">
                    Last Name: <input type="text" name="lastname" value="<%=u.getLastName()%>">
                    <p>User Name: <input type="text" name="username" value="<%=username%>"></p>

                    <p>Email Address: <input type="text" name="email" value="<%=u.getEmail()%>"> </p>
                    <p>Confirm Email: <input type="text" name="confirmemail" value="<%=u.getEmail()%>"> </p>

                    <p>Phone Number: <input type="text" name="phonenumber" value="<%=u.getPhoneNumber()%>"></p>

                    <p>Street Address: <input type="text" name="streetadd" value="<%=u.getStreetAddress()%>"></p>
                    <p> City: <input type="text" name="city" value="<%=u.getCity()%>"> </p>
                    <p>State: <select name="state" size="1">
                        <option selected value=""> </option>
                        <option value="AL">Alabama</option>
                        <option value="Alaska">Alaska</option>
                        <option value="Arizona">Arizona</option>
                        <option value="Arkansas">Arkansas</option>
                        <option value="California">California</option>
                        <option value="Colorado">Colorado</option>
                        <option value="Connecticut">Connecticut</option>
                        <option value="Delaware">Delaware</option>
                        <option value="Florida">Florida</option>
                        <option value="Georgia">Georgia</option>
                        <option value="Hawaii">Hawaii</option>
                        <option value="Idaho">Idaho</option>
                        <option value="Illinois">Illinois</option>
                        <option value="Indiana">Indiana</option>
                        <option value="Iowa">Iowa</option>
                        <option value="Kansas">Kansas</option>
                        <option value="Kentucky">Kentucky</option>
                        <option value="Louisiana">Louisiana</option>
                        <option value="Maine">Maine</option>
                        <option value="Maryland">Maryland</option>
                        <option value="Massachusetts">Massachusetts</option>
                        <option value="Michigan">Michigan</option>
                        <option value="Minnesota">Minnesota</option>
                        <option value="Mississippi">Mississippi</option>
                        <option value="Missouri">Missouri</option>
                        <option value="Montana">Montana</option>
                        <option value="Nebraska">Nebraska</option>
                        <option value="Nevada">Nevada</option>
                        <option value="New Hampshire">New Hampshire</option>
                        <option value="New Jersey">New Jersey</option>
                        <option value="New Mexico">New Mexico</option>
                        <option value="New York">New York</option>
                        <option value="North Carolina">North Carolina</option>
                        <option value="North Dakota">North Dakota</option>
                        <option value="Ohio">Ohio</option>
                        <option value="Oklahoma">Oklahoma</option>
                        <option value="Oregon">Oregon</option>
                        <option value="Pennsylvania">Pennsylvania</option>
                        <option value="Rhode Island">Rhode Island</option>
                        <option value="South Carolina">South Carolina</option>
                        <option value="South Dakota">South Dakota</option>
                        <option value="Tennessee">Tennessee</option>
                        <option value="Texas">Texas</option>
                        <option value="Utah">Utah</option>
                        <option value="Vermont">Vermont</option>
                        <option value="Virginia">Virginia</option>
                        <option value="Washington">Washington</option>
                        <option value="West Virginia">West Virginia</option>
                        <option value="Wisconsin">Wisconsin</option>
                        <option value="Wyoming">Wyoming</option>
                    </select> </p>

                    <p>Zip Code: <input type="text" name="zipcode" value="<%=u.getZipCode()%>"> </p>

                    <p>Password: <input type="password" name="pwd"></p>
                    <p>Confirm Password: <input type="password" name="confirmpwd"></p>
                    <p>Secret Question: <input type="text" name="question" value="<%=u.getSecQuest()%>"></p>
                    <p>Secret Answer: <input type="text" name="answer"value="<%=u.getSecAnswer()%>"></p>

                    <p><input type="submit" value="Update and Save" name="action"></p>
                </form>
                <%
                    } 
                    else {
                        out.println("<p>You are not logged in!</p>");
                    }



                %>


            </div>

            <%@include file="footer.jsp" %>
        </div>

    </body>
</html>
