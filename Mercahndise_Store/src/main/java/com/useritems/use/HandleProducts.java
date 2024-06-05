package com.useritems.use;

import java.util.Arrays;
import java.util.List;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import com.useritems.use.User;
import com.useritems.use.*;
import com.useritems.use.Items;
/**
 * Servlet implementation class HandleProducts
 */
public class HandleProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private double price;
	private double updateprice= 0;
	private int prev = 0;
	private ArrayList<String> itemoptions;
	private ArrayList<String> itemvalues;
	private String[] productsubject = {"Video Games","Fashion","Others","Candy"};
	private String[] choclatepics = {"images/Bean_Choclate1.png","images/Bean_Choclate2.png","images/Bean_Choclate3.png","images/Bean_Choclate4.png","images/Bean_Choclate5.png","images/Bean_Choclate6.png"};
	private String[] chewspics = {"images/beanster_chews.png","images/beanster_chews2.png","images/beanster_chews3.png","images/beanster_chews4.png","images/beanster_chews5.png","images/beanster_chews6.png"};
	private String[] videogamepics = {"images/beanster_videogame1.png","images/beanster_videogame2.png","images/beanster_videogame3.png","images/beanster_videogame4.png","images/beanster_videogame5.png","images/beanster_videogame6.png"};
	private String[] bottlepics = {"images/beanster_bottle.png","images/beanster_bottle1.png","images/beanster_bottle2.png","images/beanster_bottle3.png","images/beanster_bottle4.png","images/beanster_bottle5.png"};
	private String[] amigopics = {"images/amigo.jpeg","images/amigo1.png","images/amigo2.png","images/amigo3.png","images/amigo4.png","images/amigo5.png","images/amigo6.png"};
	private String[] sweaterpics = {"images/beanster_clothing.png","images/sweater1.png","images/sweater2.png","images/sweater3.png","images/sweater4.png","images/sweater5.png"};
	private String[] tshirtspics = {"images/t-shirts1.png","images/t-shirts2.png","images/t-shirts3.png","images/t-shirts4.png","images/t-shirts5.png","images/t-shirts6.png"};
    
    private Items milkchoclate = new Items(productsubject[3],choclatepics[0],"Milk Choclate Beanster Bar",1.99);
    private Items carmelchoclate = new Items(productsubject[3],choclatepics[1],"Carmel Choclate Beanster Bar",1.99);
    private Items cookieschoclate = new Items(productsubject[3],choclatepics[2],"Cookies and Cream Choclate Beanster Bar",1.99);
    private Items crunchchoclate = new Items(productsubject[3],choclatepics[3],"Crunch Beanster Bar",1.99);
    private Items Darkchoclate = new Items(productsubject[3],choclatepics[4],"Dark Choclate Beanster Bar",1.99);
    
    private Items smallsweater = new Items(productsubject[1],sweaterpics[0],"Small Beanster Sweater",29.99);
    private Items mediumsweater = new Items(productsubject[1],sweaterpics[1],"Medium Beanster Sweater",29.99);
    private Items largesweater = new Items(productsubject[1],sweaterpics[2],"Large Beanster Sweater",29.99);
    private Items xlargesweater = new Items(productsubject[1],sweaterpics[0],"Large Beanster Sweater",29.99);
    
    private Items smalltshirt = new Items(productsubject[1],tshirtspics[0],"Small Beanster T-shirt",24.99);
    private Items mediumtshirt = new Items(productsubject[1],tshirtspics[0],"Medium Beanster T-shirt",24.99);
    private Items largetshirt = new Items(productsubject[1],tshirtspics[0],"Large Beanster T-shirt",24.99);
    private Items xlargetshirt = new Items(productsubject[1],tshirtspics[0],"X-Large Beanster T-shirt",24.99);
 
    private Items regchews = new Items(productsubject[3],chewspics[0],"Beanster Chewables",2.99);
    private Items sourchews = new Items(productsubject[3],chewspics[4],"Beanster Sour Chewables",2.99);
    
    private Items physicalamigo = new Items(productsubject[0],amigopics[0],"The 3 Amigos(Physical)",39.99);
    private Items digitalamigo = new Items(productsubject[0],amigopics[0],"The 3 Amigos(Digital)",39.99);
    
    private Items digitalvideo = new Items(productsubject[0],videogamepics[0],"ChronoCrafters: Time's Guardians(Digital)",39.99);
    private Items physicalvideo = new Items(productsubject[0],videogamepics[0],"ChronoCrafters: Time's Guardians(Physical)",39.99);
    
    private Items smallbottle = new Items(productsubject[2],bottlepics[1],"Beanster BETT bottle",8.99);
    private Items largebottle = new Items(productsubject[2],bottlepics[0],"Beanster BIG BETT bottle",12.99);
    
    public HandleProducts() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String amount = "0";
		
		ServletContext context = request.getServletContext();
		User loggedinuser = (User) context.getAttribute("loggedinUser");
		String option = request.getParameter("menu");
		amount = request.getParameter("amount");
		String buynow = request.getParameter("BuyNow");
		Accounts account = (Accounts) context.getAttribute("account");// we need Accounts logic for handling null users
		String addtocart = request.getParameter("Addtocart");
		int num = 0;
		try {
		num =  Integer.parseInt(amount);
		}catch(NumberFormatException e) {
			num = 0;
		}
		double totalamountprice = price*num;
		
		
		

		try {
			if(!loggedinuser.equals("")) { //just to indicate if the logged in user is null or not
		
				
				
				
				
				try {
					if(option.equals("smallbottle")) {
						
						
						if(!loggedinuser.checkitemsincart(smallbottle)) {
						loggedinuser.addtocart(smallbottle);
						smallbottle.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(smallbottle)) {
									smallbottle.setamount(items.getamount()+num);
								}
								
							}
						}
					}
					
					if(option.equals("largebottle")) {
						
						
						if(!loggedinuser.checkitemsincart(largebottle)) {
						loggedinuser.addtocart(largebottle);
						largebottle.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(largebottle)) {
									largebottle.setamount(items.getamount()+num);
								}
								
							}
						}
					}
					
					
				if(option.equals("Milk")) {
				
					
					if(!loggedinuser.checkitemsincart(milkchoclate)) {
					loggedinuser.addtocart(milkchoclate);
					milkchoclate.setamount(num);
					}else {
						for(Items items : loggedinuser.getallitems()) {
							
							if(items.equals(milkchoclate)) {
								milkchoclate.setamount(items.getamount()+num);
							}
							
						}
					}
				}
				if(option.equals("Carmel")) {
					if(!loggedinuser.checkitemsincart(carmelchoclate)) {
						loggedinuser.addtocart(carmelchoclate);
						carmelchoclate.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(carmelchoclate)) {
									carmelchoclate.setamount(items.getamount()+num);
								}
								
							}
						}

				}
				if(option.equals("Crunch")) {
					if(!loggedinuser.checkitemsincart(crunchchoclate)) {
						loggedinuser.addtocart(crunchchoclate);
						crunchchoclate.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(crunchchoclate)) {
									crunchchoclate.setamount(items.getamount()+num);
								}
								
							}
						}

				}
				if(option.equals("Cookies and Cream")) {
					if(!loggedinuser.checkitemsincart(cookieschoclate)) {
						loggedinuser.addtocart(cookieschoclate);
						cookieschoclate.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(cookieschoclate)) {
									cookieschoclate.setamount(items.getamount()+num);
								}
								
							}
						}

				}
				if(option.equals("Dark")) {
					if(!loggedinuser.checkitemsincart(Darkchoclate)) {
						loggedinuser.addtocart(Darkchoclate);
						Darkchoclate.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(Darkchoclate)) {
									Darkchoclate.setamount(items.getamount()+num);
								}
								
							}
						}
				}
				
if(option.equals("sSmall")) {
				
					
					if(!loggedinuser.checkitemsincart(smallsweater)) {
					loggedinuser.addtocart(smallsweater);
					smallsweater.setamount(num);
					}else {
						for(Items items : loggedinuser.getallitems()) {
							
							if(items.equals(smallsweater)) {
								smallsweater.setamount(items.getamount()+num);
							}
							
						}
					}
				}
				if(option.equals("sMedium")) {
					if(!loggedinuser.checkitemsincart(mediumsweater)) {
						loggedinuser.addtocart(mediumsweater);
						mediumsweater.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(mediumsweater)) {
									mediumsweater.setamount(items.getamount()+num);
								}
								
							}
						}

				}
				if(option.equals("sLarge")) {
					if(!loggedinuser.checkitemsincart(largesweater)) {
						loggedinuser.addtocart(largesweater);
						largesweater.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(largesweater)) {
									largesweater.setamount(items.getamount()+num);
								}
								
							}
						}

				}
				if(option.equals("sX-Large")) {
					if(!loggedinuser.checkitemsincart(xlargesweater)) {
						loggedinuser.addtocart(xlargesweater);
						xlargesweater.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(xlargesweater)) {
									xlargesweater.setamount(items.getamount()+num);
								}
								
							}
						}

				}
				if(option.equals("tSmall")) {
					if(!loggedinuser.checkitemsincart(smalltshirt)) {
						loggedinuser.addtocart(smalltshirt);
						smalltshirt.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(smalltshirt)) {
									smalltshirt.setamount(items.getamount()+num);
								}
								
							}
						}
				}
				if(option.equals("tMedium")) {
					if(!loggedinuser.checkitemsincart(mediumtshirt)) {
						loggedinuser.addtocart(mediumtshirt);
						mediumtshirt.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(mediumtshirt)) {
									mediumtshirt.setamount(items.getamount()+num);
								}
								
							}
						}
				}
				if(option.equals("tLarge")) {
					if(!loggedinuser.checkitemsincart(largetshirt)) {
						loggedinuser.addtocart(largetshirt);
						largetshirt.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(largetshirt)) {
									largetshirt.setamount(items.getamount()+num);
								}
								
							}
						}
				}
				if(option.equals("tX-Large")) {
					if(!loggedinuser.checkitemsincart(xlargetshirt)) {
						loggedinuser.addtocart(xlargetshirt);
						xlargetshirt.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(xlargetshirt)) {
									xlargetshirt.setamount(items.getamount()+num);
								}
								
							}
						}
				}
				if(option.equals("regular")) {
					if(!loggedinuser.checkitemsincart(regchews)) {
						loggedinuser.addtocart(regchews);
						regchews.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(regchews)) {
									regchews.setamount(items.getamount()+num);
								}
								
							}
						}
				}
				if(option.equals("sour")) {
					if(!loggedinuser.checkitemsincart(sourchews)) {
						loggedinuser.addtocart(sourchews);
						sourchews.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(sourchews)) {
									sourchews.setamount(items.getamount()+num);
								}
								
							}
						}
				}
				
				if(option.equals("aPhysical")) {
					if(!loggedinuser.checkitemsincart(physicalamigo)) {
						loggedinuser.addtocart(physicalamigo);
						physicalamigo.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(physicalamigo)) {
									physicalamigo.setamount(items.getamount()+num);
								}
								
							}
						}
				}
				if(option.equals("aDigital")) {
					if(!loggedinuser.checkitemsincart(digitalamigo)) {
						loggedinuser.addtocart(digitalamigo);
						digitalamigo.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(digitalamigo)) {
									digitalamigo.setamount(items.getamount()+num);
								}
								
							}
						}
				}
				if(option.equals("vPhysical")) {
					if(!loggedinuser.checkitemsincart(physicalvideo)) {
						loggedinuser.addtocart(physicalvideo);
						physicalvideo.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(physicalvideo)) {
									physicalvideo.setamount(items.getamount()+num);
								}
								
							}
						}
				}
				if(option.equals("vDigital")) {
					if(!loggedinuser.checkitemsincart(digitalvideo)) {
						loggedinuser.addtocart(digitalvideo);
						digitalvideo.setamount(num);
						}else {
							for(Items items : loggedinuser.getallitems()) {
								
								if(items.equals(digitalvideo)) {
									digitalvideo.setamount(items.getamount()+num);
								}
								
							}
						}
				}
				}catch(NullPointerException e) {
					
				}

						
					try {
						if(addtocart.equals("Addtocart")) {
						for(int i = 0; i < 6; i++) {
							String s = Integer.toString(i+1);
							String options = request.getParameter("option"+s);
							if(option.equals(options)) {
								loggedinuser.chosenoption(option);
								loggedinuser.additems(option);
							}
						}
						// adds to the amount
						loggedinuser.setcart(prev + num,updateprice + totalamountprice);
						context.setAttribute("updatedamount",loggedinuser.getamountofitems() );
						context.setAttribute("Subtotal",loggedinuser.gettotal() );
						request.getRequestDispatcher("productinfo.jsp").forward(request, response);
							}
					}catch(NullPointerException e) {
						
					}
					try {
						if(buynow.equals("BuyNow")) {
						for(int i = 0; i < 6; i++) {
							String s = Integer.toString(i+1);
							String options = request.getParameter("option"+s);
							if(option.equals(options)) {
								loggedinuser.chosenoption(option);
								loggedinuser.additems(option);
							}
						}
						if(prev == 0) {
							updateprice = totalamountprice;
							prev =  num;
						}
						loggedinuser.setcart(prev,updateprice);
						context.setAttribute("updatedamount",loggedinuser.getamountofitems() );
						context.setAttribute("Subtotal",loggedinuser.gettotal() );
						request.getRequestDispatcher("Cart.jsp").forward(request, response);
							}
					}catch(NullPointerException e) {
						request.getRequestDispatcher("error.jsp").forward(request, response);
					}
			}
		}catch(NullPointerException e) {
			if(account == null) {
				account = new Accounts();
			}
			account.doPost(request, response);
				}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Check What buttons were pressed
		 String sweater = "";// check if the button is pressed
    	 String shirt = "";// check if the button is pressed
    	 String amigos = "";// check if the button is pressed
    	 String bottle = "";		
    	 String chewables = "";
    	 String choclate = "";		
    	 String game = "";
		String searchbar = "";
		boolean checkall = false;
		
		String use = "use";
		
		
		ServletContext context = request.getServletContext();
		  sweater = request.getParameter("sweater");// check if the button is pressed
    	  shirt = request.getParameter("t-shirt");// check if the button is pressed
    	  amigos = request.getParameter("3amigos");// check if the button is pressed
    	  bottle = request.getParameter("bottle");		
    	  chewables = request.getParameter("chewables");
    	  choclate = request.getParameter("choclate");		
    	 game = request.getParameter("game");
    	  searchbar = request.getParameter("search");
    	 itemoptions = new ArrayList<String>();
    	 itemvalues = new ArrayList<String>();
    	 
    	 String[] Checklist = {searchbar,game,sweater,shirt,amigos,bottle,chewables,choclate};
    	 for(String notempty : Checklist) {
 			try {
 				if(!notempty.equals("")) {
 					use = notempty;
 				}
 				
 			}catch(NullPointerException e) {
 				
 			}
 		}
    	 
    	
    	
    	 
    	 context.setAttribute("products", this);
    	 try {
   			if(use.equals("choclate")) {
   				use = "reset";
  				itemoptions.add("Milk");
  				itemoptions.add("Dark");
  				itemoptions.add("Carmel");
  				itemoptions.add("Cookies and Cream");
  				itemoptions.add("Crunch");
  				itemvalues.add("Milk");
  				itemvalues.add("Dark");
  				itemvalues.add("Carmel");
  				itemvalues.add("Cookies and Cream");
  				itemvalues.add("Crunch");
   	        	//request.getRequestDispatcher("index.jsp").forward(request, response);
   				for(int i =0; i < choclatepics.length;i++) {
   					String s = Integer.toString(i+1);
   				context.setAttribute("productpic" + s,choclatepics[i]);//update the index and the context index at the same time 
   				context.setAttribute("choclatepic" + s,choclatepics[i]);//update the index and the context index at the same time 
   				}
   				context.setAttribute("description","Milk Chocolate: Classic and creamy, our Milk Chocolate Beanster Bar is a smooth, velvety delight that melts in your mouth, offering a pure, nostalgic chocolate joy.\r\n"
   						+ "Dark Chocolate: Rich and sophisticated, the Dark Chocolate Beanster Bar is for the true connoisseur. With its deep cocoa notes and a hint of mystery, it’s a dark dream come true.\r\n"
   						+ "Caramel Chocolate: A luscious layer of golden caramel wrapped in silky chocolate. The Caramel Chocolate Beanster Bar is a decadent fusion of sweet and buttery bliss.\r\n"
   						+ "Cookies and Cream Chocolate: Crunchy cookie bits meet creamy white chocolate in our Cookies and Cream Beanster Bar. It’s a playful twist on a classic favorite that’s sure to please.\r\n"
   						+ "Crunch: Get ready for a textural adventure with the Crunch Beanster Bar. Crispy, crunchy bits enrobed in our signature chocolate create an experience that’s as fun as it is flavorful.");
   				context.setAttribute("topic",productsubject[3]);
   				context.setAttribute("price",  price = 1.99);
  				context.setAttribute("choose", "Flavor");
   	        }
   		} catch (NullPointerException e) {
   		}
    	 try {
  			if(use.equalsIgnoreCase("sweater")) {
  				use = "reset";
  				itemoptions.add("Small");
  				itemoptions.add("Medium");
  				itemoptions.add("Large");
  				itemoptions.add("X-Large");
  				itemvalues.add("sSmall");
  				itemvalues.add("sMedium");
  				itemvalues.add("sLarge");
  				itemvalues.add("sX-Large");
  	        	//request.getRequestDispatcher("index.jsp").forward(request, response);
  				for(int i =0; i < sweaterpics.length;i++) {
  					String s = Integer.toString(i+1);
  				context.setAttribute("productpic" + s,sweaterpics[i]);//update the index and the context index at the same time 
  				}
  				context.setAttribute("description","Step into the urban jungle with our latest BEASTER hoodie, designed for those who play the mind game and emerge as champions. The bold purple hue sets the stage for a graphic that’s all about attitude and style.");
  				context.setAttribute("topic",productsubject[1]);
  				context.setAttribute("price", price = 29.99);
 				context.setAttribute("choose", "Size");
  	        }
  		} catch (NullPointerException e) {
  		}
    	 try {
   			if(use.equalsIgnoreCase("t-shirt")) {
   				use = "reset";
  				itemoptions.add("Small");
  				itemoptions.add("Medium");
  				itemoptions.add("Large");
  				itemoptions.add("X-Large");
  				itemvalues.add("tSmall");
  				itemvalues.add("tMedium");
  				itemvalues.add("tLarge");
  				itemvalues.add("tX-Large");
   				int a = tshirtspics.length;
   	        	//request.getRequestDispatcher("index.jsp").forward(request, response);
   				for(int i = 0; i < a;i++) {
   					String s = Integer.toString(i+1);
   				context.setAttribute("productpic" + s,tshirtspics[i]);//update the index and the context index at the same time 
   				}
   				//context.setAttribute("productpic2","images/t-shirts1.png");
   				context.setAttribute("description","Dive into the vibrant world of Beanster, where each t-shirt is a canvas for the digital soul. Our collection features six unique designs, each bursting with the energy of the digital age. From the rhythmic beats of music production to the thrilling realms of gaming and content creation, our shirts embody the passions that drive the modern era.");
   				context.setAttribute("topic",productsubject[1]);
   				context.setAttribute("price",price = 24.99);
 				context.setAttribute("choose", "Size");
   	        }
   		} catch (NullPointerException e) {
   		}
    	 try {
   			if(use.equalsIgnoreCase("3amigos")) {
   				use = "reset";
  				itemoptions.add("Physical");
  				itemoptions.add("Digital");
  				itemvalues.add("aPhysical");
  				itemvalues.add("aDigital");
   	        	//request.getRequestDispatcher("index.jsp").forward(request, response);
   				for(int i =0; i < amigopics.length;i++) {
   					String s = Integer.toString(i+1);
   				context.setAttribute("productpic" + s,amigopics[i]);//update the index and the context index at the same time 
   				}
   				context.setAttribute("description","a cooperative adventure game that features three unique characters, each with their own special abilities. Players can either team up with friends or switch between characters to utilize their skills for overcoming obstacles and solving puzzles.");
   				context.setAttribute("topic",productsubject[0]);
   				context.setAttribute("price",price = 39.99);
 				context.setAttribute("choose", "Edition");
   	        }
   		} catch (NullPointerException e) {
   		}
     	 try {
    			if(use.equalsIgnoreCase("bottle")) {
    				use = "reset";
      				itemoptions.add("Small");
      				itemoptions.add("Large");
      				itemvalues.add("smallbottle");
      				itemvalues.add("largebottle");
    				
    	        	//request.getRequestDispatcher("index.jsp").forward(request, response);
    				for(int i = 0; i < bottlepics.length;i++) {
    					String s = Integer.toString(i+1);
    				context.setAttribute("productpic" + s,bottlepics[i]);//update the index and the context index at the same time 
    				}
    				//context.setAttribute("productpic2","images/t-shirts1.png");
    				context.setAttribute("description","**BETT Series Water Bottle by Benaster Productions**\r\n"
    						+ "\r\n"
    						+ "Upgrade your hydration with the BETT Series Water Bottle, crafted from high-quality stainless steel for durability and insulation. It keeps drinks cold for up to 24 hours and hot for up to 12 hours. Featuring a sleek, ergonomic design that fits most car cup holders, it's leak-proof, sweat-proof, and eco-friendly. The stylish gradient color and Beamum Bester logo make it a fashionable choice. With a 20-ounce capacity, it's perfect for any situation. Experience luxury and practicality—order your BETT Series Water Bottle today!");
    				context.setAttribute("topic",productsubject[2]);
    				context.setAttribute("price",12.99 + "(Large) $"+8.99+"(Small)");
    				context.setAttribute("choose", "Size");
    	        }
    		} catch (NullPointerException e) {
    		}
     	 try { 
 			if(use.equalsIgnoreCase("game")) {
 				use = "reset";
  				itemoptions.add("Physical");
  				itemoptions.add("Digital");
  				itemvalues.add("vPhysical");
  				itemvalues.add("vDigital");
 				
 				for(int i = 0; i < videogamepics.length;i++) {
 					String s = Integer.toString(i+1);
 				context.setAttribute("productpic" + s,videogamepics[i]);//update the index and the context index at the same time 
 				}
 				//context.setAttribute("productpic2","images/t-shirts1.png");
 				context.setAttribute("description","ChronoCrafters: Time's Guardians - An Epic Adventure Awaits!\r\n"
 						+ "\r\n"
 						+ "Step into the world of ChronoCrafters: Time's Guardians, the latest blockbuster from Beanster Productions! Prepare yourself for an unparalleled adventure that blends the thrill of time travel with captivating gameplay. In this immersive experience, you will journey through time and space, unraveling the mysteries of history and the future alike.");
 				context.setAttribute("topic",productsubject[0]);
 				context.setAttribute("price",price = 59.99);
 				context.setAttribute("choose", "Edition");
 	        }
 		} catch (NullPointerException e) {
 		}
     	try {
 			if(use.equalsIgnoreCase("chewables")) {
 				use = "reset";
 				itemoptions.add("regular");
  				itemoptions.add("sour");
  				itemvalues.add("regular");
  				itemvalues.add("sour");
 				
 				for(int i = 0; i < chewspics.length;i++) {
 					String s = Integer.toString(i+1);
 				context.setAttribute("productpic" + s,chewspics[i]);//update the index and the context index at the same time 
 				}
 				//context.setAttribute("productpic2","images/t-shirts1.png");
 				context.setAttribute("description","Discover the Joy of Snacking with Beanster's Chews!\r\n"
 						+ "Are you ready for a burst of fun and flavor in every bite? Introducing Beanster's Chews, the ultimate gummy candy sensation brought to you by Beanster Productions! Perfect for kids, teens, and anyone with a sweet tooth, our chews are designed to delight and excite.");
 				context.setAttribute("topic",productsubject[3]);
 				context.setAttribute("price",price = 2.99);
 				context.setAttribute("choose", "Flavor");
 				
 	        }
 		} catch (NullPointerException e) {
 		}
		
		request.getRequestDispatcher("productinfo.jsp").forward(request, response);
	}
	public ArrayList<String> getvalues(){
		return itemvalues;
	}
	
	public ArrayList<String> getoptions(){
		return itemoptions;
	}

}
