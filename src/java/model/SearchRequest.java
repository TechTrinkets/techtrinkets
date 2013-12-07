package model;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.regex.Pattern;
import model.db.DBQueryHandler;

public class SearchRequest {

    public ArrayList<Product> getProductTable() {
        String query = "SELECT * FROM Products";
        ArrayList<Product> result = new ArrayList<Product>();

        try {
            DBQueryHandler dbQueHand = new DBQueryHandler();
            ResultSet rs = dbQueHand.doQuery(query);

            while (rs.next()) {
                int i = 1;
                int PID = rs.getInt(i++);
                String name = rs.getString(i++);
                double price = rs.getDouble(i++);
                boolean available = rs.getBoolean(i++);
                String category = rs.getString(i++);
                String image = rs.getString(i++);
                String description = rs.getString(i++);

                Product product = new Product(PID, name, price, available, category, image, description);
                result.add(product);
            }

            dbQueHand.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }

    public ArrayList<Product> search(String searchterms) {
        ArrayList<Product> result = new ArrayList<Product>();

        if (searchterms.compareTo("All") == 0) {
            return getProductTable();
        } else {
            String query = "SELECT * FROM Products WHERE name LIKE '%"
                    + searchterms + "%' OR category LIKE '%"
                    + searchterms + "%';";
            try {
                DBQueryHandler dbQueHand = new DBQueryHandler();
                ResultSet rs = dbQueHand.doQuery(query);

                while (rs.next()) {
                    int i = 1;
                    int PID = rs.getInt(i++);
                    String name = rs.getString(i++);
                    double price = rs.getDouble(i++);
                    boolean available = rs.getBoolean(i++);
                    String category = rs.getString(i++);
                    String image = rs.getString(i++);
                    String description = rs.getString(i++);

                    Product product = new Product(PID, name, price, available, category, image, description);
                    result.add(product);
                }
                dbQueHand.close();

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return result;
    }

    public Product productInfo(int input) {

        String query = "SELECT * FROM Products WHERE PID=" + input + ";";
        Product result = null;
        try {
            DBQueryHandler dbQueHand = new DBQueryHandler();
            ResultSet rs = dbQueHand.doQuery(query);

            while (rs.next()) {
                int i = 1;
                int PID = rs.getInt(i++);
                String name = rs.getString(i++);
                double price = rs.getDouble(i++);
                boolean available = rs.getBoolean(i++);
                String category = rs.getString(i++);
                String image = rs.getString(i++);
                String description = rs.getString(i++);

                result = new Product(PID, name, price, available, category, image, description);
            }

            dbQueHand.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;

    }
}
