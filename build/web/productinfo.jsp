<%-- 
    Document   : productinfo
    Created on : Nov 27, 2013, 12:04:38 PM
    Author     : Rissy
--%>

<%@page import="model.Product"%>
<%@page import="model.SearchRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
              Integer PID = Integer.parseInt(request.getParameter("PID"));
              SearchRequest sr = new SearchRequest();
              Product one = sr.productInfo(PID);
              if(one == null)
                  out.println("<p>Cannot display item</p>");
              else
              {
                out.println("<li>"+one.getName()+"</li>");
                out.println("<li>"+one.getPrice()+"</li>");
                out.println("<li>"+one.getCategory()+"</li>");
                out.println("<li>"+one.getAvailable()+"</li>");
                out.println("<li>"+one.getPID()+"</li>");
                out.println("<li>"+one.getDescription()+"</li>");
              %>
              <form action="controller?action=addtocart&PID=<%=one.getPID()%>" method="post">
                  <input type="submit" value="Add to Cart" id="add"/>
              </form>
               
             <%
              }
                            
            %>
        
    </body>
</html>
