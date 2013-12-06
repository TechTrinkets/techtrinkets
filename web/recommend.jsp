<%-- 
    Document   : recommend
    Created on : Dec 1, 2013, 5:25:50 PM
    Author     : Student_User
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="model.SearchRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="SearchRequest" class="model.SearchRequest">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <div id="container">

            <%@include file="header.jsp" %>
                        
            <div id="content">
        
        <%
            //Is this the cart page too??
            
            Integer pid = Integer.parseInt(request.getParameter("PID"));
            out.println("Thanks for adding");
            
            SearchRequest sr = new SearchRequest();
            Product p = sr.productInfo(pid);
            
            if(p == null)
                  out.println("<p>Cannot display item</p>");
              else
              {
                out.println("<li>"+p.getName()+"</li>");
                out.println("<li>"+p.getPrice()+"</li>");
                out.println("<li>"+p.getCategory()+"</li>");
                out.println("<li>"+p.getAvailable()+"</li>");
                out.println("<li>"+p.getPID()+"</li>");
              }
                      
            
            ArrayList<Product> all_recommend = sr.search(p.getCategory()); //not working right :(
            if(all_recommend != null)
            {    
                
                for(Product recommend : all_recommend)
                {
                    if(recommend.getPID() != p.getPID())
                    {
                        out.println("<p>We recommend:</p>");
                        out.println("<li>"+recommend.getName()+"</li>");
                        out.println("<li>"+recommend.getPrice()+"</li>");
                        out.println("<li>"+recommend.getCategory()+"</li>");
                        out.println("<li>"+recommend.getAvailable()+"</li>");
                        out.println("<li>"+recommend.getPID()+"</li>");
                        
                        return;
                    }
                    out.println("same");
                    
                }
            }
            else
                out.println("recommend null");
            
            
              
            
        %>  
            </div>
      </div>
            
            <%@include file="footer.jsp" %>
    </body>
</html>
</jsp:useBean>
