package model;

import java.sql.*;
import java.util.regex.Pattern;
import model.db.DBCommandHandler;

public class OrderUpdate {

    public boolean addOrder(int uid, double total_price, String date, String time) {

        DBCommandHandler dbComHand = new DBCommandHandler();
        String command = "INSERT INTO Orders (UID, total_price, date, time)"
                + " VALUES(";
        command += uid;
        command += ", " + total_price;
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

    public boolean addOrderProduct(int oid, int pid, int quantity) {

        DBCommandHandler dbComHand = new DBCommandHandler();
        String command = "INSERT INTO OrderProduct (OID, PID, quantity)"
                + " VALUES(";
        command += oid;
        command += ", " + pid;
        command += ", " + quantity;
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

    public boolean deleteOrder(int oid) {
        DBCommandHandler dbComHand = new DBCommandHandler();
        try {
            String command = "DELETE FROM Orders WHERE OID ='" + oid + "'";
            int result = dbComHand.doCommand(command);
            dbComHand.close();
            return (result > 0);
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }
}
