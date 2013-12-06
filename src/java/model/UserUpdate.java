package model;

import java.sql.*;
import model.db.DBCommandHandler;

/*
 * Handle user update and deletions requests
 * @author Allen
 */
public class UserUpdate {

    /*
     * Add a user record
     */
    public boolean addUser(int UID, String firstName, String lastName,
            String city, String state, int zipCode, String phoneNum,
            String email, String password, String username, String sec_quest,
            String sec_answer, String street) {


        //Check if proper values are not null and then return false
        //TO DO! add checks for sec quest, answer, street
      /*if (UID < 1 || firstName.length() == 0 || lastName.length() == 0
         || city.length() == 0 || state.length() == 0 || Integer.toString(zipCode).length() < 5
         || Integer.toString(zipCode).length() > 5 || email.length() == 0 || password.length() == 0)
         return false;
         */
        DBCommandHandler dbComHand = new DBCommandHandler();
        String command = "INSERT INTO Users(first_name, last_name, city, state, zipcode, phone_number,"
                + "email_address, password, username, sec_quest, sec_answer, street_address) VALUES(";
        command += "'" + firstName + "'";
        command += ", '" + lastName + "'";
        command += ", '" + city + "'";
        command += ", '" + state + "'";
        command += "," + zipCode;
        command += "," + phoneNum;
        command += ", '" + email + "'";
        command += ", '" + password + "'";
        command += ", '" + username + "'";
        command += ", '" + sec_quest + "'";
        command += ", '" + sec_answer + "'";
        command += ", '" + street + "'";
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

    public boolean setFirstName(int UID, String firstname) {
        DBCommandHandler dbComHand = new DBCommandHandler();
        try {
            String command = "UPDATE Users SET firstname='" + firstname + "' WHERE "
                    + "UID=" + UID + ";";
            int result = dbComHand.doCommand(command);
            dbComHand.close();
            return (result > 0);
        }catch (SQLException ex) {
            return false;
        }
    }
    
    public boolean setLastName(int UID, String lastname) {
        DBCommandHandler dbComHand = new DBCommandHandler();
        try {
            String command = "UPDATE Users SET lastname='" + lastname + "' WHERE "
                    + "UID=" + UID + ";";
            int result = dbComHand.doCommand(command);
            dbComHand.close();
            return (result > 0);
        }catch (SQLException ex) {
            return false;
        }
    }
    
    public boolean setCity(int UID, String city) {
        DBCommandHandler dbComHand = new DBCommandHandler();
        try {
            String command = "UPDATE Users SET city='" + city + "' WHERE "
                    + "UID=" + UID + ";";
            int result = dbComHand.doCommand(command);
            dbComHand.close();
            return (result > 0);
        }catch (SQLException ex) {
            return false;
        }
    }
    
    public boolean setState(int UID, String state) {
        DBCommandHandler dbComHand = new DBCommandHandler();
        try {
            String command = "UPDATE Users SET state='" + state + "' WHERE "
                    + "UID=" + UID + ";";
            int result = dbComHand.doCommand(command);
            dbComHand.close();
            return (result > 0);
        }catch (SQLException ex) {
            return false;
        }
    }
    
    public boolean setZipcode(int UID, int zipcode) {
        DBCommandHandler dbComHand = new DBCommandHandler();
        try {
            String command = "UPDATE Users SET zipcode='" + zipcode + "' WHERE "
                    + "UID=" + UID + ";";
            int result = dbComHand.doCommand(command);
            dbComHand.close();
            return (result > 0);
        }catch (SQLException ex) {
            return false;
        }
    }
    
    public boolean setPhoneNum(int UID, String firstname) {
        DBCommandHandler dbComHand = new DBCommandHandler();
        try {
            String command = "UPDATE Users SET firstname='" + firstname + "' WHERE "
                    + "UID=" + UID + ";";
            int result = dbComHand.doCommand(command);
            dbComHand.close();
            return (result > 0);
        }catch (SQLException ex) {
            return false;
        }
    }
    
    public boolean setEmail(int UID, String email) {
        DBCommandHandler dbComHand = new DBCommandHandler();
        try {
            String command = "UPDATE Users SET email_address='" + email + "' WHERE "
                    + "UID=" + UID + ";";
            int result = dbComHand.doCommand(command);
            dbComHand.close();
            return (result > 0);
        }catch (SQLException ex) {
            return false;
        }
    }
    
    public boolean setPassword(int UID, String password) {
        DBCommandHandler dbComHand = new DBCommandHandler();
        try {
            String command = "UPDATE Users SET password='" + password + "' WHERE "
                    + "UID=" + UID + ";";
            int result = dbComHand.doCommand(command);
            dbComHand.close();
            return (result > 0);
        }catch (SQLException ex) {
            return false;
        }
    }
    
    public boolean setSecQuest(int UID, String sec_quest) {
        DBCommandHandler dbComHand = new DBCommandHandler();
        try {
            String command = "UPDATE Users SET sec_quest='" + sec_quest + "' WHERE "
                    + "UID=" + UID + ";";
            int result = dbComHand.doCommand(command);
            dbComHand.close();
            return (result > 0);
        }catch (SQLException ex) {
            return false;
        }
    }
    
    public boolean setSecAnswer(int UID, String SecAnswer) {
        DBCommandHandler dbComHand = new DBCommandHandler();
        try {
            String command = "UPDATE Users SET sec_answer='" + SecAnswer + "' WHERE "
                    + "UID=" + UID + ";";
            int result = dbComHand.doCommand(command);
            dbComHand.close();
            return (result > 0);
        }catch (SQLException ex) {
            return false;
        }
    }
    
    public boolean setStreetAddr(int UID, String street_address) {
        DBCommandHandler dbComHand = new DBCommandHandler();
        try {
            String command = "UPDATE Users SET street_address='" + street_address + "' WHERE "
                    + "UID=" + UID + ";";
            int result = dbComHand.doCommand(command);
            dbComHand.close();
            return (result > 0);
        }catch (SQLException ex) {
            return false;
        }
    }
    
    
}