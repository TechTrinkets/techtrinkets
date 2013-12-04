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

<<<<<<< HEAD
   public Product(int PID, String name, double price, boolean available,
=======
   public Product(int PID, String name, double price, boolean available, 
>>>>>>> 9ec81eec034b23723a73562ee85118b5a724bcf2
                  String category, String image, String description){
      this.available = available;
      this.PID = PID;
      this.price = price;
      this.name = name;
      this.category = category;
      this.image = image;
      this.description = description;
<<<<<<< HEAD
   }
=======
   }  
>>>>>>> 9ec81eec034b23723a73562ee85118b5a724bcf2
   
   public boolean getAvailable(){ return available; }
   public int getPID(){ return PID; }
   public double getPrice() { return price; }
   public String getName(){ return name; }
   public String getCategory(){ return category; }
   public String getImage(){ return image; }
   public String getDescription(){ return description; }
   
}
