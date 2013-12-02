/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.regex.Pattern;
import model.db.DBQueryHandler;


/**
 *
 * @author Student_User
 */
public class AccountRequest {
    
    public User getAccountInfo()
    {
        String query = "SELECT * FROM Users;";
        User result = null;
        try{
            DBQueryHandler dbQueHand = new DBQueryHandler();
            ResultSet rs = dbQueHand.doQuery(query);
            
            while( rs.next())
            {
                int i = 1;
                String firstname = rs.getString(i++);
                String lastname = rs.getString(i++);
                /*
                * More information
                */
                //retVal = new User(firstname, lastname);
            }
            dbQueHand.close();
        } catch( SQLException ex){
            ex.printStackTrace();
        }
        
        return result;
        
    }
    
    public String getSecurityQuestion(int uid)
    {
        if(Pattern.matches("^[0-9]", String.valueOf(uid))) 
        {
            String query = "SELECT sec_quest FROM Users WHERE UID="
                            + uid + ";";
            String result = null;
            
            try{
                DBQueryHandler dbQueHand = new DBQueryHandler();
                ResultSet rs = dbQueHand.doQuery(query);
                
                rs.next();
                retVal = rs.getString(1);
               
                dbQueHand.close();
            } catch( SQLException ex){
                ex.printStackTrace();
            }
            
            return result;
        }
        
        return "";
    }
    
    public boolean validateSecurityAnswer(int uid, String inputanswer)
    {
        if(Pattern.matches("^[0-9]", String.valueOf(uid)))
        {
            //filter input
            String query = "SELECT sec_answer FROM Users WHERE UID="
                            + uid + ";";
            String actualanswer;
            try{
                DBQueryHandler dbQueHand = new DBQueryHandler();
                ResultSet rs = dbQueHand.doQuery(query);
                
                rs.next();
                actualanswer = rs.getString(1);
              
                dbQueHand.close();
                if(actualanswer.compareTo(inputanswer)==0)
                {
                    return true;
                }
            } catch( SQLException ex){
                ex.printStackTrace();
            }
        }
        
       return false;
    
    }
}
