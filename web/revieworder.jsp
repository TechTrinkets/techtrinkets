<%-- 
    Document   : revieworder
    Created on : Nov 27, 2013, 12:04:50 PM
    Author     : Rissy
--%>

<%@page import="model.Product"%>
<%@page import="model.SearchRequest"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.User"%>
<%@page import="model.UserRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Your order</h1>
        
        <h2>Items</h2>
        <%
                  
                if( session.getAttribute("cartitems") != null)
                {
                    ArrayList<Integer> cartItems = (ArrayList<Integer>)session.getAttribute("cartitems");
                    double totalPrice = 0;
                    
                    SearchRequest sr = new SearchRequest();
                    out.println("<table>");
                    for(int i: cartItems)
                    {
                        out.println("<tr><td>Product</td><td>Price</td></tr>");
                        Product p = sr.productInfo(i);
                        out.println("<td>"+p.getName()+"</td>");
                        out.println("<td>$"+p.getPrice()+"</td>");
                        out.println("</td></tr>");
                        totalPrice = totalPrice + p.getPrice();
                        
                    }
                    out.println("<tr><td><b>Total<b/></td><td>"+totalPrice+"</td></tr>");
                    out.println("</table>");
                }
                else
                    out.println("<p>You have no items in your cart</p>");
                
        %>
        
        <h2>Billing Information</h2>
        <%
            
            if(request.getParameter("billingaddr").equals("accountaddr"))
            {
                UserRequest ur = new UserRequest();
                String username = (String)session.getAttribute("userid");
                User u = ur.getUser(username);
                out.println("<b>"+u.getFirstName()+" "+u.getLastName()+"</b><br/>");
                out.println(u.getStreetAddress()+"<br/>");
                out.println(u.getCity()+","+u.getState()+"<br/>");
                out.println(u.getZipCode()+"<br/>");
            }
            else
            {
                out.println(request.getParameter("bfirstname"));
                out.println(request.getParameter("blastname"));
                out.println(request.getParameter("bstreetadd"));
                out.println(request.getParameter("bcity"));
                out.println(request.getParameter("bstate"));
                out.println(request.getParameter("bzipcode"));
            
            }
            
            
            
        %>
        <h2>Shipping Information</h2>
        <%
            if(request.getParameter("shippingaddr").equals("accountaddr"))
            {
                UserRequest ur = new UserRequest();
                String username = (String)session.getAttribute("userid");
                User u = ur.getUser(username);
                out.println("<b>"+u.getFirstName()+" "+u.getLastName()+"</b><br/>");
                out.println(u.getStreetAddress()+"<br/>");
                out.println(u.getCity()+","+u.getState()+"<br/>");
                out.println(u.getZipCode()+"<br/>");
                out.println("Phone: "+u.getPhoneNumber()+"<br/>");
            }
            else
            {
                out.println(request.getParameter("sfirstname"));
                out.println(request.getParameter("slastname"));
                out.println(request.getParameter("sstreetadd"));
                out.println(request.getParameter("scity"));
                out.println(request.getParameter("sstate"));
                out.println(request.getParameter("szipcode"));
                out.println(request.getParameter("sphonenum"));
            
            }
            
            
            
        %>
        
        <form action="controller?action=submitorder" method="post">
            <input type="submit" value="Place Order">
        </form>
               
        
    </body>
</html>
