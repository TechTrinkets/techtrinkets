
<%@page import="java.text.NumberFormat"%>
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
        
        <div id="container">

            <%@include file="header.jsp" %>
                        
            <div id="content">
        <h2>Review Your Order:</h2>
        
        <h3>Items:</h3>
        <%
                  
                if( session.getAttribute("cartitems") != null)
                {
                    ArrayList<Integer> cartItems = (ArrayList<Integer>)session.getAttribute("cartitems");
                    double totalPrice = 0;
                    
                    SearchRequest sr = new SearchRequest();
                    out.println("<table>");
                    out.println("<tr><td>Product</td><td>Price</td></tr>");
                        
                    for(int i: cartItems)
                    {
                        Product p = sr.productInfo(i);
                        out.println("<td>"+p.getName()+"</td>");
                        out.println("<td>$"+p.getPrice()+"</td>");
                        out.println("</td></tr>");
                        totalPrice += p.getPrice();
                        
                    }
                    NumberFormat nf = NumberFormat.getInstance();
                    nf.setMaximumFractionDigits(2);
                    nf.setMinimumFractionDigits(2);
                    out.println("<tr><td style=\"text-align:right\"><b>Total:<b/></td><td>$"+nf.format(totalPrice)+"</td></tr>");
                    out.println("</table>");
                }
                else
                    out.println("<p>You have no items in your cart</p>");
                
        %>
        
        <h3>Billing Information:</h3>
        <%
            
            if(request.getParameter("billingaddr").equals("accountaddr"))
            {
                UserRequest ur = new UserRequest();
                String username = (String)session.getAttribute("userid");
                User u = ur.getUser(username);
                out.println("<b>"+u.getFirstName()+" "+u.getLastName()+"</b><br/>");
                out.println(u.getStreetAddress()+"<br/>");
                out.println(u.getCity()+", "+u.getState());
                out.println(u.getZipCode()+"<br/><br/>");
            }
            else
            {
                out.println("<p>"+request.getParameter("bfirstname")+" ");
                out.println(request.getParameter("blastname")+"<br/>");
                out.println(request.getParameter("bstreetadd")+"<br/>");
                out.println(request.getParameter("bcity")+",");
                out.println(request.getParameter("bstate")+" ");
                out.println(request.getParameter("bzipcode")+"</p>");
            }
            
            
            
        %>
        <h3>Shipping Information:</h3>
        <%
            if(request.getParameter("shippingaddr").equals("accountaddr"))
            {
                UserRequest ur = new UserRequest();
                String username = (String)session.getAttribute("userid");
                User u = ur.getUser(username);
                out.println("<b>"+u.getFirstName()+" "+u.getLastName()+"</b><br/>");
                out.println(u.getStreetAddress()+"<br/>");
                out.println(u.getCity()+", "+u.getState());
                out.println(u.getZipCode()+"<br/>");
                out.println("Phone: "+u.getPhoneNumber()+"<br/>");
            }
            else
            {
                out.println("<p>"+request.getParameter("sfirstname")+" ");
                out.println(request.getParameter("slastname")+"<br/>");
                out.println(request.getParameter("sstreetadd")+"<br/>");
                out.println(request.getParameter("scity")+",");
                out.println(request.getParameter("sstate")+" ");
                out.println(request.getParameter("szipcode")+"<br/>");
                out.println(request.getParameter("sphonenum")+"</p>");
            }
            
            
            
        %>
        <br />
        <form action="controller?action=submitorder" method="post">
            <input type="submit" value="Place Order" id="add">
        </form>
               
            </div>
        </div>
    </body>
</html>
