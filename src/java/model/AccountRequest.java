/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author Student_User
 */
public class AccountRequest {
    
    public User getAccountInfo()
    {
        String query = "select * from user";
        User retVal = null;
        try{
            DBQueryHandler dbQueHand = new DBQueryHandler();
            ResultSet rs = dbQueHand.doQuery(query);
            
            while( rs.next())
            {
                int i = 1;
                String firstname = rs.getString(i);
                i++;
                String lastname = rs.getString(i);
                i++;
                //retVal = new User(firstname, lastname);
            }
            dbQueHand.close();
        } catch( SQLException ex){
            ex.printStackTrace();
        }
        
        return retVal;
        
    }
    
    public String getSecurityQuestion()
    {
        String query = "select secquest from user where UID=123";
        String retVal = null;
        try{
            DBQueryHandler dbQueHand = new DBQueryHandler();
            ResultSet rs = dbQueHand.doQuery(query);
            
            rs.next();
            retVal = rs.getString(1);
           
            dbQueHand.close();
        } catch( SQLException ex){
            ex.printStackTrace();
        }
        
        return retVal;
    
    }
    
    public boolean validateSecurityAnswer(String inputanswer)
    {
        //filter input
        String query = "select secanswer from user where UID=123";
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
        
       return false;
    
    }
    
    
}
