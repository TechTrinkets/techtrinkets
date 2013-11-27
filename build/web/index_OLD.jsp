<%-- 
    Document   : index
    Created on : Nov 19, 2013, 11:59:23 AM
    Author     : Student_User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tech Trinkets</title>
    </head>
    <body>
        <table class="bigtable">
            <tr class="topnav">
                <td colspan="2">
                    Welcome, Guest - Sign In - Register - View Cart
                    <hr />
                </td>
            </tr>
            <tr class="logosearch">
                <td>
                    <img src="images/techtrinkets.png" id="logo" />
                </td>
                <td>
                    <form>
                        <input type="text" id="search" />&nbsp;
                        <input type="submit" value="Search!" id="searchbutton" />
                    </form>
                    <!--<img src="images/search_box.jpg" id="search" /> -->
                </td>
            </tr>
            <tr class="body">
                <td><br /><br />Browse By Type:
                    <ul>
                        <li>Tshirts</li>
                        <li>Appliances</li>
                        <li>Home & Office</li>
                        <li>Toys</li>
                        <li>Clearance</li>
                        <li>All Products</li>
                    </ul>
                </td>
                <td>
                    <table class="itemtable">
                        <tr>
                            <td>
                                <img src="images/ImageSoon.jpg" /> <br /> Description
                            </td>
                            <td>
                                <img src="images/ImageSoon.jpg" /> <br /> Description
                            </td>
                            <td>
                                <img src="images/ImageSoon.jpg" /> <br /> Description
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="images/ImageSoon.jpg" /> <br /> Description
                            </td>
                            <td>
                                <img src="images/ImageSoon.jpg" /> <br /> Description
                            </td>
                            <td>
                                <img src="images/ImageSoon.jpg" /> <br /> Description
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="images/ImageSoon.jpg" /> <br /> Description
                            </td>
                            <td>
                                <img src="images/ImageSoon.jpg" /> <br /> Description
                            </td>
                            <td>
                                <img src="images/ImageSoon.jpg" /> <br /> Description
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="footer">
                <td colspan="2">
                    Copyright 2013 Tech Trinkets, Inc. All Rights Reserved. User Agreement and Privacy Policy.
                </td>
            </tr>
        </table>
    </body>
</html>
