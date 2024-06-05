package com.useritems.use;

import java.util.ArrayList;

public class User {
	
	
	private String address;
    private String city;
    private String state;
    private int zipcode;
    private String firstName;
    private String lastName;
    private String username;
    private String password;
    private String email;
    private String cvv;
    private String Card_num;
    private String Month;
    private String cardname; // card owner's name 
    private double total;
    private int items; // amount of items
    private String profilepic;
    private ArrayList<User> userList;
    private ArrayList<String> chosenoptions;
    private ArrayList<String> chosenitems;
    private ArrayList<Items> allitems;
    private ArrayList<Items> itemshistory;

    public User(String firstName, String lastName, String username, String password,String email,String profilepic) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.username = username;
        this.password = password;
        this.email = email;
        this.profilepic = profilepic;
        this.chosenoptions = new ArrayList<String>();
        this.chosenitems = new ArrayList<String>();
        this.allitems = new ArrayList<Items>();
        this.itemshistory = new ArrayList<Items>();
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public String getLastName(){
        return lastName;
    }
    public void setLastName(String lastName){
        this.lastName = lastName;
    }
    public String getUserName() {
        return username;
    }

    public void setUserName(String username) {
        this.username = username;
    }
    public String getPassword(){
        return password;
    }
    public void setPassword(String password){
        this.password = password;
    } 
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public void setCard(String cvv,String Month,String Card_num,String cardname) {
    	this.cvv = cvv;
    	this.Card_num = Card_num;
    	this.Month = Month;  	
    	this.cardname = cardname;
    }
    public void setprofilepic(String newpic) {
    	this.profilepic = newpic;
    }
  public String getprofilepic() {
	  return profilepic;
  }
  
  public double gettotal() {
	  return total;
  }
  public void chosenoption(String option) {
	  chosenoptions.add(option);
  }
  
  public void additems(String items) {
	  
	  chosenitems.add(items);
	  
  }
  
  public void addtocart(Items item) {
	  
	  allitems.add(item);
	  
  }
  
  public ArrayList<Items> getallitems(){
	  return allitems;
  }
  
  public ArrayList<String> getitems(){
	  return chosenitems;
  }
  
  public String getcardnum() {
	  return Card_num;
  }
  
  public String getcardname() {
	  return cardname;
  }
  
  public String getexperiationmonth() {
	  return Month;
  }
  
  public void setcart(int items,double total) {
	  
	  this.items += items;
	  this.total += total;
	  
  }
 
  public int getamountofitems() {
	  return items;
  }
  
  public boolean checkitemsincart(Items itemtocheck) {
	  boolean check = false;
	  try {
	  
	  for(Items checkitem : allitems) {
		  
		  if(itemtocheck.equals(checkitem)) {
			  check =  true;
		  }
		  
	  }
	  
	  
	  }catch(NullPointerException e) {
		  check =  false;
	  }
	  return check;
	  
	  
  }
  public void removeitem(Items itemtoremove) {
	  
	  allitems.remove(itemtoremove);
  }
  
  public boolean iscardinfo() {
	  boolean cardinfo = false;
	  try {
		 if(cvv != null) {
			cardinfo = true;
		 }
		  
		  
	  }catch(NullPointerException e) {
		  
	  }
	  return cardinfo;
  }
  


public void setshippment(String address,String city,String state,int zipcode) {
	this.address = address;
	this.zipcode = zipcode;
	this.city = city;
	this.state = state;
}

public int getzipcode() {
	return zipcode;
}

public boolean getshipmentinfo() {
	boolean check = false;
	try {
		if(address.length() == address.length()) {
			check = true;
		}
	}catch(NullPointerException e) {
		
	}
	return check;
}

public void sethistory(Items history) {
	
	this.itemshistory.add(history);
}

public ArrayList<Items> gethistory(){
	return itemshistory;
}

public String getcity() {
	return city;

}
public String getstate() {
	return state;
}
public String getaddress() {
	return address;
}
}
