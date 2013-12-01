package model;

/**
 * Order represents the orders placed in the database
 * @author Allen
 */
public class Order{
   private int OID, UID;
   private double totalPrice;
   private String date, time;
   
   public Order(int OID, int UID, double totalPrice, String date, String time){
      this.OID = OID;
      this.UID = UID;
      this.totalPrice = totalPrice;
      this.date = date;
      this.time = time;
   }

   public int getOID(){ return OID; }
   public int getUID(){ return UID; }
   public double getTotalPrice(){ return totalPrice; }
   public String getDate(){ return date; }
   public String getTime(){ return time; }
}
