package com.useritems.use;
import java.time.format.DateTimeFormatter;
import java.text.DecimalFormat;
import java.time.LocalDateTime;

public class Items {
	private String subject;
    private String image;
    private String name;
    private double price;
    private int amount;
    private double tax;
    private double subtotal;
    private LocalDateTime currentDateTime = LocalDateTime.now();
    private String purchased;
    
    public Items(String subject, String image, String name, double price ) {
    	this.image = image;
    	this.subject = subject;
    	this.name = name;
    	this.price = price;
   // 	this.date = new 
    	 	
    }
    
public void setimg(String img) { //we only need one image to display in the cart 
	
	this.image = img; 
}

public void setitemname(String name) {
	
	this.name = name;
}

public void setsubject(String subject) {
	this.subject = subject;
}

public void setprice(double price) {
	this.price = price;
}

public void setamount(int amount) {
	this.amount = amount;
}
public String getimg() {
	return image;
}
public String getitemname() {
	return name;
}
public String getsubject() {
	return subject;
}

public int getamount() {
	return amount;
}

public double getprice() {
	return price;
}

public double gettotalprice() {
	
	
	 DecimalFormat df = new DecimalFormat("#.00"); // Use two decimal places

	String stringtax = df.format(amount*0.07);
	String stringsubtotal = df.format((price *amount)+ tax);
	
	this.tax = Double.parseDouble(stringtax);
	this.subtotal = Double.parseDouble(stringsubtotal);
	return subtotal;
}

public double gettax() {
	return tax;
}

public void purchasedate(LocalDateTime date) {
	
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    this.purchased = date.format(formatter);	
}

public String getpurchasedate() {
	return purchased;
}

}
