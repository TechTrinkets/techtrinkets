package model;

import java.util.*;
import java.sql.*;
import model.db.DBQueryHandler;

/*
 * Handle requests for order information
 * @author Allen
 */
 
public class OrderRequest{

    public ArrayList<Object> getOrderTable() {
        String query = "SELECT * FROM Orders;";
        ArrayList<Object> result = new ArrayList<Object>();
        
        try {
            DBQueryHandler dbQueHand = new DBQueryHandler();
            ResultSet rs = dbQueHand.doQuery(query);
            ResultSetMetaData rsmd = rs.getMetaData();
           
            int numCols = rsmd.getColumnCount();
            result.add(new Integer(numCols));
           
            while (rs.next()) {
                int i = 1;
                int OID = rs.getInt(i++);
                int UID = rs.getInt(i++);
                double totalPrice = rs.getDouble(i++);
                String date = rs.getString(i++);
                String time = rs.getString(i++);
              
                Order order = new Order(OID, UID, totalPrice, date, time);
                result.add(order);
            }
           
           dbQueHand.close();
        } catch (SQLException e) {
           e.printStackTrace();
        }
        
        return result;
    }
    
    public ArrayList<Order> getOrder(int oid) {
     
        ArrayList<Order> result = new ArrayList<Order>();
        
        if(Pattern.matches("^[0-9]", String.valueOf(oid))
        {
            String query = "SELECT * FROM Orders WHERE OID=";
                           + oid + ";";
            
            try {
                DBQueryHandler dbQueHand = new DBQueryHandler();
                ResultSet rs = dbQueHand.doQuery(query);
                
                while (rs.next()) {
                    int i = 1;
                    int OID = rs.getInt(i++);
                    int UID = rs.getInt(i++);
                    double totalPrice = rs.getDouble(i++);;
                    String date = rs.getString(i++);
                    String time = rs.getString(i++);
                    Order order = new Order(OID, UID, totalPrice, date, time);
                    result.add(order); 
                }
                dbQueHand.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }//getOrder
