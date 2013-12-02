/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import model.db.DBQueryHandler;


/**
 *
 * @author Student_User
 */
public class SearchRequest {
    
    public ArrayList<Product> getProductTable() {
      String query = "select * from Products";
      ArrayList<Product> result = new ArrayList<Product>();
      
      try {
         DBQueryHandler dbQueHand = new DBQueryHandler();
         ResultSet rs = dbQueHand.doQuery(query);
         ResultSetMetaData rsmd = rs.getMetaData();
         
         //int numCols = rsmd.getColumnCount();
         //result.add(new Integer(numCols));
         
         while (rs.next()) {
            int i = 1;
            int PID = rs.getInt(i++);
            String name = rs.getString(i++);
            double price = rs.getDouble(i++);
            boolean available = rs.getBoolean(i++);
            String category = rs.getString(i++);
            
            Product product = new Product(PID, name, price, available, category);
            result.add(product);
         }
         
         dbQueHand.close();
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
      return result;     
   }
    
       
    public ArrayList<Product> search(String searchterms)
    {
    	/* I am assuming that searchTerms is what the user enters into the search bar
    	 * and is what is used to query the database. So, under that assumption I will
    	 * create multiple queries to be executed and if they return an empty set, 
    	 * then we just go ahead and execute another query.
    	 *
    	 * For example, say they enter "Football", we run a query on the category, which
    	 * would return null because we don't have any football category. So we would
    	 * then we run a query on the the product table's 'name' field. In this case, 
    	 * it would return any products named football. Then, if they enter something
    	 * that causes the queries to return all empty sets, then we tell them that nothing
    	 * could be found based on searchTerms.
    	 */
    	
        //Check if searchTerms contains only letters or a hyphen
        
        ArrayList<Product> result = new ArrayList<Product>();
        
        if(Pattern.matches("^[a-zA-Z\- ]", searchTerms)
        {
	    if(searchterms.compareTo("allproducts")==0)
	        return getProductTable();
	    else
	    {
	        String nameQuery = "SELECT * FROM Products WHERE name='" 
	             		 + searchTerms + "';";
	        String categoryQuery = "SELECT * FROM Products WHERE category='"
	        		     + searchTerms + "';";
	        
	        try
	        {
         	    DBQueryHandler dbQueHand = new DBQueryHandler();
         	    ResultSet rs = dbQueHand.doQuery(query);
         	    
         	    while (rs.next()) {
            		int i = 1;
            		int PID = rs.getInt(i++);
            		String name = rs.getString(i++);
            		double price = rs.getDouble(i++);
            		boolean available = rs.getBoolean(i++);
            		String category = rs.getString(i++);
            		Product product = new Product(PID, name, price, available, category);
            		result.add(product);
         	    }
         	    db.close();
         	    
	        } catch (SQLException e) {
         	    e.printStackTrace();
      		}
         }
    }//search
             /*
                Input search terms
                * Split into individual terms
                * for each term
                    Create db query
                    Execute db query handler
		Create Product objects with results
		Return list of Product objects
             */
    
    public Product productInfo(int input)
    {
      System.out.println("product info test");
      String query = "SELECT * FROM Products WHERE PID=" + input + ";";
      Product result = null;
      try {
         DBQueryHandler dbQueHand = new DBQueryHandler();
         ResultSet rs = dbQueHand.doQuery(query);
         //ResultSetMetaData rsmd = rs.getMetaData();
         
         //int numCols = rsmd.getColumnCount();
         //result.add(new Integer(numCols));
         
         while (rs.next()) {
            int i = 1;
            int PID = rs.getInt(i++);
            String name = rs.getString(i++);
            double price = rs.getDouble(i++);
            boolean available = rs.getBoolean(i++);
            String category = rs.getString(i++);
            
            result = new Product(PID, name, price, available, category);
         }
         
         dbQueHand.close();
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
      return result;  
        
    }
}
