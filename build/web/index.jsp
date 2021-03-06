
<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="model.SearchRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tech Trinkets</title>
        <script type="text/javascript">
            var image1 = new Image()
            image1.src = "images/bazinga.jpg"
            var image2 = new Image()
            image2.src = "images/goldieblox.jpg"
            var image3 = new Image()
            image3.src = "images/mehBabydoll.jpg"
        </script>
    </head>
    <body>

        <div id="container">

            <%@include file="header.jsp" %>

            <div id="content">
                <h2> Featured items: </h2>
                <p style="text-align:center">
                    <img src="images/onezie.jpg" width="300" height="300" name="slide" />
                </p>
                <script type="text/javascript">
                    var count = 1;
                    function next()
                    {
                        document.images.slide.src = eval("image" + count + ".src");
                        if (count < 3)
                            count++;
                        else
                            count = 1;
                        setTimeout("next()", 4000);
                    }
                    next();
                </script>

                <%
                    SearchRequest sr = new SearchRequest();
                    Product one = sr.productInfo(105);
                    if (one == null) {
                        out.println("<p>Cannot display item</p>");
                    }

                %>
            </div>

            <%@include file="footer.jsp" %>

    </body>
</html>
