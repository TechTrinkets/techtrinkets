package model;

import java.sql.*;

/*
 * Handle user update and deletions requests
 * @author Allen
 */
 
 public class UserUpdate {
   
   /*
    * Add a user record
    */
   public boolean addUser(int UID, String firstName, String lastName,
                  String city, String state, int zipCode, int phoneNum,
                  String email, String password, String username) {
      String hi = Integer.toString(zipCode);
      System.out.print(hi);
      
      //Check if proper values are not null and then return false
      if (UID < 1 || firstName.length() == 0 || lastName.length() == 0
          || city.length() == 0 || state.length() == 0 || Integer.toString(zipCode).length() < 5
          || Integer.toString(zipCode).length() > 5 || email.length() == 0 || password.length() == 0)
         return false;
      
      DBCommandHandler dbComHand = new DBCommandHandler();
      String command = "INSERT INTO user VALUES(";
      command += "'" + UID + "'";
      command += ", '" + firstName + "'";
      command += ", '" + lastName + "'";
      command += ", '" + city + "'";
      command += ", '" + state + "'";
      command += ", '" + zipCode + "'";
      command += ", '" + phoneNum + "'";
      command += ", '" + email + "'";
      command += ", '" + password + "'";
      command += ", '" + username + "'";
      command += ")";
      
      try {
         int resultCount = dbComHand.doCommand(command);
         dbComHand.close();
         return (resultCount > 0);
      } catch (SQLException ex) {
         ex.printStackTrace();
         return false;
      }
   }
   
   /*
    * Delete a user record
    */
   public boolean deleteUser(int UID) {
      DBCommandHandler dbComHand = new DBCommandHandler();
      try {
         String command = "DELETE FROM user WHERE UID ='" + UID + "'";
         int result = dbComHand.doCommand(command);
         dbComHand.close();
         return (result > 0);
      } catch (SQLException ex) {
         System.out.println(ex.getMessage());
         return false;
      }
   }
} 
