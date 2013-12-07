
<%@page import="model.User"%>
<%@page import="model.UserRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Billing Information</title>
    </head>
    <body>

        <div id="container">

            <%@include file="header.jsp" %>


            <div id="content">
                <div>

                    <%
                        UserRequest ur = new UserRequest();
                        if (session.getAttribute("loggedin") != null && session.getAttribute("loggedin").equals(true)) {

                            out.println("<h2>Billing Information:</h2>");
                            String username = (String) session.getAttribute("userid");
                            User u = ur.getUser(username);
                    %>
                    <form action="revieworder.jsp" method="post">
                        <table>
                            <tr>
                                <td>
                                    <input type="radio" name="billingaddr" value="accountaddr" checked>
                                </td>
                                <td class="billing">
                                    <%
                                        out.println("<b>" + u.getFirstName() + " " + u.getLastName() + "</b><br/>");
                                        out.println(u.getStreetAddress() + "<br/>");
                                        out.println(u.getCity() + ", " + u.getState() + " ");
                                        out.println(u.getZipCode() + "<br/>");
                                        out.println("Phone: " + u.getPhoneNumber());
                                    %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" name="billingaddr" value="newaddr">
                                </td>
                                <td>
                                    <p>First Name: <input type="text" name="bfirstname"><br />
                                        Last Name: <input type="text" name="blastname"><br />
                                        Street Address: <input type="text" name="bstreetadd"><br />
                                        City: <input type="text" name="bcity">&nbsp;&nbsp;<br />
                                        State: <input type="text" name="bstate"  size="3"><br />
                                        Zip: <input type="text" name="bzipcode" size="7"></p>
                                </td>
                            </tr>
                        </table>
                        <br/>
                        Card Type: 
                        <select>
                            <option>Select Card Type</option>
                            <option value="visa">Visa</option>
                            <option value="mastercard">Mastercard</option>
                            <option value="discover">Discover</option>
                        </select>
                        <br/>
                        Credit Card Number: <input type="text" name="ccnum"><br/>
                        Card Security Code: <input type="text" name="ccsec"><br/>
                        Expiration Date: 
                        <select>
                            <option>Month</option>
                            <option value="01">01</option>
                            <option value="02">02</option>
                            <option value="03">03</option>
                            <option value="04">04</option>
                            <option value="05">05</option>
                            <option value="06">06</option>
                            <option value="07">07</option>
                            <option value="08">08</option>
                            <option value="09">09</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                        /
                        <select>
                            <option value="13">2013</option>
                            <option value="14">2014</option>
                            <option value="15">2015</option>
                            <option value="16">2016</option>
                        </select>
                        <br/>
                        <br/>
                        <h1>Shipping Information</h1>

                        <table>
                            <tr>
                                <td>
                                    <input type="radio" name="shippingaddr" value="accountaddr" checked>
                                </td>
                                <td>
                                    <%
                                        out.println("<b>" + u.getFirstName() + " " + u.getLastName() + "</b><br/>");
                                        out.println(u.getStreetAddress() + "<br/>");
                                        out.println(u.getCity() + ", " + u.getState());
                                        out.println(u.getZipCode() + "<br/>");
                                        out.println("Phone: " + u.getPhoneNumber() + "<br/>");
                                    %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" name="shippingaddr" value="newaddr">
                                </td>
                                <td>
                                    <p>First Name: <input type="text" name="sfirstname"><br/>
                                        Last Name: <input type="text" name="slastname"><br/>
                                        Street Address: <input type="text" name="sstreetadd"><br/>
                                        City: <input type="text" name="scity"><br/>
                                        State: <input type="text" name="sstate" size="3"><br/>
                                        Zip: <input type="text" name="szipcode" size="7"><br/>
                                        Phone: <input type="text" name="sphonenum"></p>
                                </td>
                            </tr>
                        </table>
                        <input type="submit" value="Continue" id="add"/>
                    </form>
                    <%
                    } else {
                    %>              
                    <h3>
                        Wait! Please <a href="login.jsp">log in</a> or
                        <a href="register.jsp">create an account</a> first.
                    </h3>
                    <%             }
                    %>

                </div>
                <%@include file="footer.jsp" %>
            </div>
        </div>

    </body>
</html>
