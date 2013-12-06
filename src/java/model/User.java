package model;

/**
 * User represents the users in the registry
 * @author Allen
 */

public class User {

   private String firstName, lastName, city, state, email, password, 
           username, sec_quest, sec_answer, street, phoneNum;
   private int UID, zipCode; 
   
   public User(int UID, String firstName, String lastName, String city, 
         String state, int zipCode, String phoneNum, String email, String password, 
         String username, String sec_quest, String sec_answer, String street) {
      
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
      this.sec_quest = sec_quest;
      this.sec_answer = sec_answer;
      this.street = street;
   }
   
   public String getFirstName(){ return firstName;}
   public String getLastName(){ return lastName;}
   public String getStreetAddress() {return street;}
   public String getCity(){ return city;}
   public String getState(){ return state;}
   public String getEmail(){ return email;}
   public String getPassword(){ return password;}
   public int getUID(){ return UID; }
   public int getZipCode(){ return zipCode; }
   public String getPhoneNumber(){ return phoneNum; }
   public String getSecQuest(){ return sec_quest;}
   public String getSecAnswer(){ return sec_answer;}
   
}
