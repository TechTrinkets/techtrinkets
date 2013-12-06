/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.*;
import java.util.regex.Pattern;
import model.db.DBCommandHandler;

/**
 *
 * @author Melissa
 */
public class OrderUpdate {

    public boolean addOrder(int oid, int uid, double total_price, String date, String time) {

        DBCommandHandler dbComHand = new DBCommandHandler();
        String command = "INSERT INTO Orders (OID, UID, total_price, date, time)"
                + "VALUES(";
        command += oid;
        command += "," + uid;
        command += "," + total_price;
        command += ", '" + date + "'";
        command += ", '" + time + "'";
        command += ");";

        try {
            int resultCount = dbComHand.doCommand(command);
            dbComHand.close();
            return (resultCount > 0);
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }
    
    public boolean addOrderProduct(int oid, int pid, int quantity){
        
        DBCommandHandler dbComHand = new DBCommandHandler();
        String command = "INSERT INTO Order_Product (OID, PID, quantity)"
                + "VALUES(";
        command += oid;
        command += "," + pid;
        command += "," + quantity;
        command += ");";
         
        try {
            int resultCount = dbComHand.doCommand(command);
            dbComHand.close();
            return (resultCount > 0);
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
        
    }
    //after an order is submitted, needs to be added to orders table
}
