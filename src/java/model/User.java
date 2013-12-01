package model;

/**
 * User represents the users in the regeistry
 * @author Allen
 */

public class User {

   private String firstName, lastName, city, state, email, password, username;
   private int UID, zipCode, phoneNum; 
   
   public User(int UID, String firstName, String lastName, String city, 
         String state, int zipCode, int phoneNum, String email, String password, String username) {
      
      this.firstName = firstName;
      this.lastName = lastName;
      this.city = city;
      this.state = state;
      this.email = email;
      this.password = password;
      this.UID = UID;
      this.zipCode = zipCode;
      this.phoneNum = phoneNum;
      this.username = username;
   }
   
   public String getFirstName(){ return firstName;}
   public String getLastName(){ return lastName;}
   public String getCity(){ return city;}
   public String getState(){ return state;}
   public String getEmail(){ return email;}
   public String getPassword(){ return password;}
   public int getUID(){ return UID; }
   public int getZipCode(){ return zipCode; }
   public int getPhoneNumber(){ return phoneNum; }
   
}
