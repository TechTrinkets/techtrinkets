<%-- 
    Document   : register
    Created on : Nov 19, 2013, 12:24:18 PM
    Author     : Student_User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create an Account</title>
    </head>
    <body>

        <div id="container">

            <%@include file="header.jsp" %>

            <div id="content">
                <h1>Register Here:</h1>
                <form action="controller?action=register" method="post">

                    First Name: <input type="text" name="firstname" >
                    Last Name: <input type="text" name="lastname">
                    <p>User Name: <input type="text" name="username" ></p>

                    <p>Email Address: <input type="text" name="email" > </p>
                    <p>Confirm Email: <input type="text" name="confirmemail"> </p>

                    <p>Phone Number: <input type="text" name="phonenumber" ></p>

                    <p>Street Address: <input type="text" name="streetadd"></p>
                    <p> City: <input type="text" name="city" > </p>
                    <p>State: <select name="state" size="1">
                            <option selected value=""> </option>
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

                    <p>Zip Code: <input type="text" name="zipcode" > </p>

                    <p>Password: <input type="password" name="pwd"></p>
                    <p>Confirm Password: <input type="password" name="confirmpwd"></p>
                    <p>Secret Question: <input type="text" name="question"></p>
                    <p>Secret Answer: <input type="text" name="answer"></p>

                    <p><input type="submit" value="Register" name="action"></p>
                </form>
            </div>


            <%@include file="footer.jsp" %>

        </div>
    </body>
</html>
