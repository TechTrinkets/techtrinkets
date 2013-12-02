package model;

import java.util.*;
import java.sql.*;
import model.db.DBQueryHandler;

/*
 * Handle requests for user, product, order, and order-product information.
 * @author Allen
 */
 
public class UserRequest{

   public ArrayList<Object> getUserTable() {
      String query = "SELECT * FROM Users;";
      ArrayList<Object> result = new ArrayList<Object>();
      
      try {
         DBQueryHandler dbQueHand = new DBQueryHandler();
         ResultSet rs = dbQueHand.doQuery(query);
         ResultSetMetaData rsmd = rs.getMetaData();
         
         int numCols = rsmd.getColumnCount();
         result.add(new Integer(numCols));
         
         while (rs.next()) {
            int i = 1;
            int UID = rs.getInt(i++);
            String firstName = rs.getString(i++);
            String lastName = rs.getString(i++);
            String city = rs.getString(i++);
            String state = rs.getString(i++);
            int zipCode = rs.getInt(i++);
            int phoneNum = rs.getInt(i++);
            String email = rs.getString(i++);
            String password = rs.getString(i++);
            String username = rs.getString(i++);
            
            User user = new User(UID, firstName, lastName, city, state,
                     zipCode, phoneNum, email, password, username);
            result.add(user);
         }
         
         dbQueHand.close();
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
      return result;     
   }
   
   public User getUser(String user) {
      String query = "SELECT * FROM Users WHERE username='"+user+"'";
      User result = null;
     
      
      try {
         DBQueryHandler dbQueHand = new DBQueryHandler();
         ResultSet rs = dbQueHand.doQuery(query);
         ResultSetMetaData rsmd = rs.getMetaData();
         
         //int numCols = rsmd.getColumnCount();
         //result.add(new Integer(numCols));
         
         while (rs.next()) {
            int i = 1;
            int UID = rs.getInt(i++);
            String firstName = rs.getString(i++);
            String lastName = rs.getString(i++);
            String city = rs.getString(i++);
            String state = rs.getString(i++);
            int zipCode = rs.getInt(i++);
            int phoneNum = rs.getInt(i++);
            String email = rs.getString(i++);
            String password = rs.getString(i++);
            String username = rs.getString(i++);
            
            result= new User(UID, firstName, lastName, city, state,
                     zipCode, phoneNum, email, password, username);
            
         }
         
         dbQueHand.close();
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
      return result;     
   }
   
   public String requestQuestion(){
      String query = "select question from user where username = 'test123'";
      String result = "";
      
      try {
         DBQueryHandler dbQueHand = new DBQueryHandler();
         ResultSet rs = dbQueHand.doQuery(query);
         ResultSetMetaData rsmd = rs.getMetaData();
         
         int numCols = rsmd.getColumnCount();
         if( numCols == 1)
         {
            if(rs.next())
                result = rs.getString(0);
         }
         else
         {
             //something went wrong
         }
         dbQueHand.close();
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
      return result;
   }
   
   public String requestAnswer(){
       String query = "select answer from user where username = 'test123'";
      String result = "";
      
      try {
         DBQueryHandler dbQueHand = new DBQueryHandler();
         ResultSet rs = dbQueHand.doQuery(query);
         ResultSetMetaData rsmd = rs.getMetaData();
         
         int numCols = rsmd.getColumnCount();
         if( numCols == 1)
         {
            if(rs.next())
                result = rs.getString(0);
         }
         else
         {
             //something went wrong
         }
         dbQueHand.close();
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
      return result;
   }
}
