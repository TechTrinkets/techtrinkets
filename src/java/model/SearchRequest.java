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
       
        if(searchterms.compareTo("allproducts")==0)
             return getProductTable();
        else
         {
             /*
                Input search terms
                * Split into individual terms
                * for each term
                    Create db query
                    Execute db query handler
		Create Product objects with results
		Return list of Product objects
             */
         }
        return null;
    
    }
    
    public Product productInfo(int input)
    {
      System.out.println("product info test");
      String query = "SELECT * from Products where PID="+input;
      //ArrayList<Product> result = new ArrayList<Product>();
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
            //result.add(product);
         }
         
         dbQueHand.close();
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
      return result;  
      
        
    }
}
