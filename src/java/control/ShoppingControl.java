/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.OrderRequest;
import model.OrderUpdate;
import model.Product;
import model.SearchRequest;
import model.User;
import model.UserRequest;
import model.UserUpdate;

/**
 *
 * @author Student_User
 */
@WebServlet(name = "ShoppingControl", urlPatterns = {"/ShoppingControl"})
public class ShoppingControl extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ShoppingControl</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ShoppingControl at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("do get");
        if (request.getParameter("action") != null && 
                request.getParameter("action").equals("logout"))
        {
           System.out.println("log out");
           HttpSession session = request.getSession(true);
           session.setAttribute("loggedin", new Boolean(false));
           session.setAttribute("userid", null);
           session.setAttribute("cartitems", null);
           forwardRequest(request, response, "/index.jsp");
           
        }
        //processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("dopost");
        if (request.getParameter("action") != null)
        {
            
         
           if(request.getParameter("action").equals("register")) 
           {
                handleCreateAccount(request,response);
           }
           else if(request.getParameter("action").equals("login"))
           {
               handleLogin(request,response);
           }
           else if( request.getParameter("action").equals("search"))
           {
               forwardRequest(request,response,"/search.jsp");
           }
           else if( request.getParameter("action").equals("productinfo"))
           {
               forwardRequest(request,response,"/productinfo.jsp");
           }
           else if( request.getParameter("action").equals("addtocart"))
           {
                System.out.println("add to cart");
                Integer pid = Integer.parseInt(request.getParameter("PID"));
                HttpSession session = request.getSession(true);
                if( session.getAttribute("cartitems") != null )
                {
                    ArrayList<Integer> previousItems = (ArrayList<Integer>)session.getAttribute("cartitems");
                    previousItems.add(pid);
                    session.setAttribute("cartitems", previousItems);
                }
                else
                {    
                    ArrayList<Integer> newItem = new ArrayList<Integer>();
                    newItem.add(pid);
                    session.setAttribute("cartitems", newItem);
                }
                forwardRequest(request, response, "/recommend.jsp");                
           }
           else if( request.getParameter("action").equals("checkout"))
           {
               forwardRequest(request, response, "/billing.jsp");
           }
           else if( request.getParameter("action").equals("billing"))
           {
               //validate input
               
               forwardRequest(request, response, "/revieworder.jsp");
           }
           else if( request.getParameter("action").equals("submitorder"))
           {
               handleSubmitOrder(request, response);
           
           }
           else if( request.getParameter("action").equals("update"))
           {
               
               
               
           }
           
        
        }   
        else if( request.getParameter("secretanswer") != null)
        {
            String secretanswer = request.getParameter("answer");
            UserRequest ur = new UserRequest();
            if( secretanswer.compareTo(ur.requestAnswer()) == 0)
            {
                // it's a match! log them in
            }
            else
            {
                //error message
            }
        }
     
    }
    
    private void handleSubmitOrder(HttpServletRequest request,
          HttpServletResponse response) throws IOException, ServletException {
        
        HttpSession session = request.getSession(true);
        Integer UID = (Integer)session.getAttribute("userid");
        
        ArrayList<Integer> cartItems = (ArrayList<Integer>)session.getAttribute("cartitems");
        double totalPrice = 0;
                    
        SearchRequest sr = new SearchRequest();

        for(int i: cartItems)
        {
            Product p = sr.productInfo(i);
            totalPrice = totalPrice + p.getPrice();             
        }
        
        Date dNow = new Date( );
        SimpleDateFormat d = new SimpleDateFormat ("yyyy.MM.dd");
        SimpleDateFormat t = new SimpleDateFormat("hh:mm:ss a zzz");

      
        OrderUpdate o = new OrderUpdate();
        OrderRequest r = new OrderRequest();
        boolean addresult = o.addOrder(UID, totalPrice, d.format(dNow), t.format(dNow));
        int OID = r.getOrderID(UID,totalPrice,d.format(dNow),t.format(dNow));
        
        for(int i: cartItems)
        {
            if(o.addOrderProduct(OID,i,1) == false)
            {
                System.out.println("error adding");
            }
        }
        
       
        
        
        session.setAttribute("cartitems", null);
        
        forwardRequest(request, response, "/confirmation.jsp");
        
        
    }

    private void handleCreateAccount(HttpServletRequest request,
          HttpServletResponse response) throws IOException, ServletException {
    
            // create new user
            String firstName = request.getParameter("firstname");
            String lastName = request.getParameter("lastname");
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String confirmemail = request.getParameter("confirmemail");
            String phone = request.getParameter("phonenumber");
            String street = request.getParameter("streetadd");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String zipcode = request.getParameter("zipcode"); 
            int zip = Integer.parseInt(zipcode);
            String password = request.getParameter("pwd");
            String passwordconfirm = request.getParameter("confirmpwd");
            String sec_quest = request.getParameter("question");
            String sec_answer = request.getParameter("answer");
            //boolean terms = request.getParameter("terms");
            
            /*
            
            if(firstName == null) //check for alpha
            {
                //put an error message next to the box in red
            }
            if(lastName == null) // alpha
            {
            
            }
            if( email == null)
            {
            }
            if( confirmemail == null)
            {
                
            }
            if( password == null)
            {}
            if( passwordconfirm == null)
            {}
            if(password.length()<6)
            {
                //too short
            }
            if(password.compareTo(password) != 0)
            {
                //pwd does not match
            }
            //if( !terms){}
            */
            //check if user exists in db already?
            //need to input a username, city, state, zip, phone
            
            UserUpdate newuser = new UserUpdate();
            boolean successAdd = false;
            successAdd = newuser.addUser(123, firstName, lastName, city, state, zip, phone,
                  email, password, username, sec_quest, sec_answer, street);
            
           if( !successAdd )
           { // could not add to db
               forwardRequest(request, response, "/register.jsp");
           }
           else
           {    //user created confirmation page
               HttpSession session = request.getSession(true);
                session.setAttribute("loggedin", new Boolean(true));
                session.setAttribute("userid", username);
               forwardRequest(request, response, "/accountcreated.jsp");
           }
           
    }
    
    private void handleLogin(HttpServletRequest request,
          HttpServletResponse response) throws IOException, ServletException {
        
            String username = request.getParameter("username");
            String password = request.getParameter("pwd");
            
            UserRequest ur = new UserRequest();
            User user = ur.getUser(username);
            if(user != null && user.getPassword().compareTo(password)==0)
            {
                HttpSession session = request.getSession(true);
                session.setAttribute("loggedin", new Boolean(true));
                session.setAttribute("userid", username);
                forwardRequest(request, response, "/index.jsp");
            }
            else
            {
                //add error message
                forwardRequest(request, response, "/login.jsp");
            }
        
    }    
    
    private void handleSelectProduct(HttpServletRequest request,
          HttpServletResponse response) throws IOException, ServletException {
        String addMessage = null;
        HttpSession session = request.getSession(true);
        
        //forwardRequest(request, response, "/productinfo.jsp");
        
        // get add-pet request parameters
        String pid = request.getParameter("pid");


        if (pid == null) {
          addMessage = "Improper request";
        } else if (pid.trim().length() == 0) {
          addMessage = "pid field must not be blank";
        } else {
          // execute add transaction
          SearchRequest sr = new SearchRequest();
          //Product p = sr.productInfo();
          //addMessage = addResult ? "product found" : "Pet add failed";
        }
        //session.setAttribute("addmessage", addMessage);
    }
    
    private void forwardRequest(HttpServletRequest request,
            HttpServletResponse response, String forwardURL)
            throws IOException, ServletException
    {        
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(forwardURL);
        dispatcher.forward(request, response);
    }
    
    
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
