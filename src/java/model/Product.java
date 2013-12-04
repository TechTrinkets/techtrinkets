package model;

/**
 * Product represents the products in the database
 * @author Allen
 */

public class Product {

   private boolean available;
   private int PID;
   private double price;
   private String name, category, image, description;


   public Product(int PID, String name, double price, boolean available,
                  String category, String image, String description){
      this.available = available;
      this.PID = PID;
      this.price = price;
      this.name = name;
      this.category = category;
      this.image = image;
      this.description = description;
<<<<<<< HEAD
=======

>>>>>>> 431fa2434c1d81f24768b7abb19d7be35864365b
   }
   
   public boolean getAvailable(){ return available; }
   public int getPID(){ return PID; }
   public double getPrice() { return price; }
   public String getName(){ return name; }
   public String getCategory(){ return category; }
   public String getImage(){ return image; }
   public String getDescription(){ return description; }
   
}
