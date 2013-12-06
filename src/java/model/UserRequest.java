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
            String phoneNum = rs.getString(i++);
            String email = rs.getString(i++);
            String password = rs.getString(i++);
            String username = rs.getString(i++);
            String sec_quest = rs.getString(i++);
            String sec_answer = rs.getString(i++);
            String street = rs.getString(i++);
            
            User user = new User(UID, firstName, lastName, city, state,
                     zipCode, phoneNum, email, password, username,
                    sec_quest, sec_answer, street);
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
            String phoneNum = rs.getString(i++);
            String email = rs.getString(i++);
            String password = rs.getString(i++);
            String username = rs.getString(i++);
            String sec_quest = rs.getString(i++);
            String sec_answer = rs.getString(i++);
            String street = rs.getString(i++);
            
            result = new User(UID, firstName, lastName, city, state,
                     zipCode, phoneNum, email, password, username,
                    sec_quest, sec_answer, street);
            
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
   
   public int getUserID(String username) {

        int result = 0;
        String query = "SELECT id FROM Users WHERE username='" + username + "')";

        try {
            DBQueryHandler dbQueHand = new DBQueryHandler();
            ResultSet rs = dbQueHand.doQuery(query);

            result = rs.getInt(1);
            
            dbQueHand.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }
}
