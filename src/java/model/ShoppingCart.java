/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Student_User
 */
public class ShoppingCart {
    
   private int OID, UID;
   private double totalPrice;
   private String date, time;
   
   public ShoppingCart(){
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
