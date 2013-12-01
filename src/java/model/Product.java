package model;

/**
 * Product represents the products in the database
 * @author Allen
 */

public class Product {

   private boolean available;
   private int PID;
   private double price;
   private String name, category;

   public Product(boolean available, int PID, double price, String name, String category){
      this.available = available;
      this.PID = PID;
      this.price = price;
      this.name = name;
      this.category = category;
   }  
   
   public boolean getAvailable(){ return available; }
   public int getPID(){ return PID; }
   public double getPrice() { return price; }
   public String getName(){ return name; }
   public String getCategory(){ return category; }
   
}
