
<%@page import="model.User"%>
<%@page import="model.UserRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Information</title>
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
                            <option selected value="<%=u.getState()%>"><%=u.getState()%></option>
                            <option value="AL">AL</option>
                            <option value="AK">AK</option>
                            <option value="AZ">AZ</option>
                            <option value="AR">AR</option>
                            <option value="CA">CA</option>
                            <option value="CO">CO</option>
                            <option value="CT">CT</option>
                            <option value="DE">DE</option>
                            <option value="DC">DC</option>
                            <option value="FL">FL</option>
                            <option value="GA">GA</option>
                            <option value="HI">HI</option>
                            <option value="ID">ID</option>
                            <option value="IL">IL</option>
                            <option value="IN">IN</option>
                            <option value="IA">IA</option>
                            <option value="KS">KS</option>
                            <option value="KY">KY</option>
                            <option value="LA">LA</option>
                            <option value="ME">ME</option>
                            <option value="MD">MD</option>
                            <option value="MA">MA</option>
                            <option value="MI">MI</option>
                            <option value="MN">MN</option>
                            <option value="MS">MS</option>
                            <option value="MO">MO</option>
                            <option value="MT">MT</option>
                            <option value="NE">NE</option>
                            <option value="NV">NV</option>
                            <option value="NH">NH</option>
                            <option value="NJ">NJ</option>
                            <option value="NM">NM</option>
                            <option value="NY">NY</option>
                            <option value="NC">NC</option>
                            <option value="ND">ND</option>
                            <option value="OH">OH</option>
                            <option value="OK">OK</option>
                            <option value="OR">OR</option>
                            <option value="PA">PA</option>
                            <option value="RI">RI</option>
                            <option value="SC">SC</option>
                            <option value="SD">SD</option>
                            <option value="TN">TN</option>
                            <option value="TX">TX</option>
                            <option value="UT">UT</option>
                            <option value="VT">VT</option>
                            <option value="VA">VA</option>
                            <option value="WA">WA</option>
                            <option value="WV">WV</option>
                            <option value="WI">WI</option>
                            <option value="WY">WY</option>

                        </select> </p>

                    <p>Zip Code: <input type="text" name="zipcode" value="<%=u.getZipCode()%>"> </p>

                    <p>Password: <input type="password" name="pwd"></p>
                    <p>Confirm Password: <input type="password" name="confirmpwd"></p>
                    <p>Secret Question: <input type="text" name="question" value="<%=u.getSecQuest()%>"></p>
                    <p>Secret Answer: <input type="text" name="answer"value="<%=u.getSecAnswer()%>"></p>

                    <p><input type="submit" value="Update and Save" name="action"></p>
                </form>
                <%
                    } else {
                        out.println("<p>You are not logged in!</p>");
                    }
                %>


            </div>

            <%@include file="footer.jsp" %>
        </div>

    </body>
</html>
