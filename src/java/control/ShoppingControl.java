/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Product;
import model.SearchRequest;
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
        processRequest(request, response);
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
        
        if (request.getParameter("action").compareTo("Register") == 0) 
        {
            handleCreateAccount(request,response);
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
        else if (request.getParameter("searchform") != null)
        {
            //String searchterms = request.getParameter("searchform");
            //forwardRequest(request,response,"search.jsp");
            
        }
        
        if (request.getParameter("login") != null) {
            //login request
            String username = request.getParameter("username");
            String pwd = request.getParameter("pwd");
            
            //search db for username and password match
            //Session attribute?
            HttpSession session = request.getSession(true);
            session.setAttribute("loggedin", new Boolean(true));
            session.setAttribute("userid", username);
            
        }
        else if (request.getParameter("selectProduct") != null) {
            handleSelectProduct(request, response);
        } else if (request.getParameter("droppet") != null) {
            //handleDrop(request, response);
        }
        //forwardRequest(request, response, "/showtable.jsp");
        
        
        //processRequest(request, response);
    }

    private void handleCreateAccount(HttpServletRequest request,
          HttpServletResponse response) throws IOException, ServletException {
    
            // create new user
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String confirmemail = request.getParameter("confirmemail");
            String phone = request.getParameter("phonenumber");
            String street = request.getParameter("streetadd");
            String city = request.getParameter("phonenumber");
            String state = request.getParameter("state");
            String zipcode = request.getParameter("zipcode");                    
            String password = request.getParameter("password");
            String passwordconfirm = request.getParameter("passwordconfirm");
            String secretquestion = request.getParameter("question");
            String secretanswer = request.getParameter("answer");
            //boolean terms = request.getParameter("terms");
            
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
            
            //check if user exists in db already?
            //need to input a username, city, state, zip, phone
            
            UserUpdate newuser = new UserUpdate();
            boolean successAdd = false;
            //successAdd = newuser.addUser(int UID, firstName, lastName,
            //      String city, String state, int zipCode, int phoneNum,
            //      email, password, username);
            
           if( !successAdd )
           { // could not add to db
           }
           else
           {    //user created confirmation page
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
          Product p = sr.productInfo(pid);
          //addMessage = addResult ? "product found" : "Pet add failed";
        }
        //session.setAttribute("addmessage", addMessage);
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
