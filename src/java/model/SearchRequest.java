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
public class SearchRequest {
    
    public void browse()
    {
        /*
                Create db query
		Execute db query handler
		Create Product objects with results
		Return list of Product objects

         */
    
    }
    
    public void search(String searchterms)
    {
       /*
        if( searchterms.equals("allproducts")
             browse()
                Input search terms
		Create db query
		Execute db query handler
		Create Product objects with results
		Return list of Product objects

        */ 
    
    }
    
    public Product productInfo(String pid)
    {
        String query = "select * from product where pid=123";
        Product retVal = null;
        try{
            DBQueryHandler dbQueHand = new DBQueryHandler();
            ResultSet rs = dbQueHand.doQuery(query);
            
            while( rs.next())
            {
                int i = 1;
                String name = rs.getString(i);
                i++;
                String image = rs.getString(i);
                i++;
                //retVal = new Product();
            }
            dbQueHand.close();
        } catch( SQLException ex){
            ex.printStackTrace();
        }
        
        return retVal;
    }
    
    
}
