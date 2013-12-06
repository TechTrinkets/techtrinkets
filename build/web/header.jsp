<%-- 
    Document   : header
    Created on : Dec 4, 2013, 10:43:13 AM
    Author     : Student_User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Header</title>
    </head>
    <body>
        
               <div id="header">
                
                
                
                <%
                    if( session.getAttribute("loggedin") != null && session.getAttribute("loggedin").equals(true))
                    {
                        if(session.getAttribute("userid") != null)
                        {
                %>
                            Welcome, <a href="account.jsp"><%=session.getAttribute("userid")%></a>
                            - <a href="controller?action=logout">Sign Out</a>
                            - <a href="viewcart.jsp">Shopping Cart</a> <hr />
                <%          
                        }    
                    }
                    else
                    {
                %>
                        Welcome, Guest - <a href="login.jsp">Sign In</a> - <a href="register.jsp">Register</a>
                        - <a href="viewcart.jsp">Shopping Cart</a>&nbsp;&nbsp;<hr />
                <%  
                    } 
                %>
            </div>
            <div id="logodiv">
                <a href="index.jsp">
                    <img src="images/techtrinkets.png" id="logo" alt="Tech Trinkets" />
                </a>
            </div>
            <div id="search"> <br /><br />
                <form action="controller?action=search" method="post">
                    <input type="text" id="searchform" name="searchterm"/>
                    <input type="submit" value="Search" id="searchbutton"/>
                </form>
            </div>
            <div id="menu">

                Browse By Type:<br /><br />
                <a href="search.jsp?searchterm=Apparel">Apparel</a> <br />
                <a href="search.jsp?searchterm=Gadgets">Gadgets</a><br />
                <a href="search.jsp?searchterm=Home">Home</a><br />
                <a href="search.jsp?searchterm=Toys">Toys</a><br />
                <a href="search.jsp?searchterm=Clearance">Clearance</a><br />
                <a href="search.jsp?searchterm=All">All</a><br />
                </ul>
            </div>
    </body>
</html>
