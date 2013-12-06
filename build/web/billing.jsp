
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
                <div class="billing">

        <%
                    UserRequest ur = new UserRequest();
                    if( session.getAttribute("loggedin") != null && session.getAttribute("loggedin").equals(true))
                    {
                    
                        out.println("<h2>Billing Information</h2>");
                        String username = (String)session.getAttribute("userid");
                        User u = ur.getUser(username);
        %>
        <form action="revieworder.jsp" method="post">
            <table border="1">
                <tr>
                    <td>
                        <input type="radio" name="billingaddr" value="accountaddr">
                    </td>
                    <td>
         <%
                        out.println("<b>"+u.getFirstName()+" "+u.getLastName()+"</b><br/>");
                        out.println(u.getStreetAddress()+"<br/>");
                        out.println(u.getCity()+", "+u.getState()+"<br/>");
                        out.println(u.getZipCode()+"<br/>");
                        out.println("Phone: "+u.getPhoneNumber()+"<br/>");
          %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" name="billingaddr" value="newaddr">
                    </td>
                    <td>
                        <p>First Name: <input type="text" name="bfirstname"></p>
                        <p>Last Name: <input type="text" name="blastname"></p>
                        <p>Street Address <input type="text" name="bstreetadd"></p>
                        <p>City <input type="text" name="bcity"></p>
                        <p>State <input type="text" name="bstate"></p>
                        <p>Zipcode <input type="text" name="bzipcode"></p>
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
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
            </select>
            <br/>
            <br/>
        <h1>Shipping Information</h1>
        
        <table border="1">
                <tr>
                    <td>
                        <input type="radio" name="shippingaddr" value="accountaddr">
                    </td>
                    <td>
         <%
                        out.println("<b>"+u.getFirstName()+" "+u.getLastName()+"</b><br/>");
                        out.println(u.getStreetAddress()+"<br/>");
                        out.println(u.getCity()+","+u.getState()+"<br/>");
                        out.println(u.getZipCode()+"<br/>");
                        out.println("Phone: "+u.getPhoneNumber()+"<br/>");
          %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" name="shippingaddr" value="newaddr">
                    </td>
                    <td>
                        <p>First Name: <input type="text" name="sfirstname"></p>
                        <p>Last Name: <input type="text" name="slastname"></p>
                        <p>Street Address <input type="text" name="sstreetadd"></p>
                        <p>City <input type="text" name="scity"></p>
                        <p>State <input type="text" name="sstate"></p>
                        <p>Zipcode <input type="text" name="szipcode"></p>
                        <p>Phone <input type="text" name="sphonenum"></p>
                    </td>
                </tr>
            </table>
            <input type="submit" value="Continue"/>
        </form>
        <%
                    }
                    else
                    {
         %>              
                        <h3>
                        Wait! Please <a href="login.jsp">log in</a> or
                        <a href="register.jsp">create an account</a> first.
                        </h3>
         <%         
                    }
         %>
              

            <input type="submit" value="Continue"/>
        </form>
                </div>
            <%@include file="footer.jsp" %>
        </div>
        </div>
      
    </body>
</html>
