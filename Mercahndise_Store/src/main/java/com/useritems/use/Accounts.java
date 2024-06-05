package com.useritems.use;




import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.ThreadLocalRandom;
import com.useritems.use.User;
import com.useritems.use.*;
import com.useritems.use.Items;
/**
 * Servlet implementation class Accounts
 */
public class Accounts extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private boolean loggedin = false;
	private ArrayList<User> userlist;
	private String[] profilepics = {"images/profile_pic1.png","images/profile_pic2.png","images/profile_pic3.png","images/profile_pic4.png","images/profile_pic5.png","images/profile_pic6.png"};
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Accounts() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//account creation method
		
		ServletContext context = request.getServletContext();
		
			String email = request.getParameter("Email");
   	 		String password = request.getParameter("Password");
   	 		String confirmed = request.getParameter("ConfirmedPassword");
	 		String username = request.getParameter("Username");
	 		String first_name = request.getParameter("Fname");
   	 		String last_name = request.getParameter("Lname");
   	 		
   	 		try {
   	 			for(User userexist : userlist) {
   	 			
   	 			
   	 			if(userexist.getEmail().equals(email)) {
   	 			request.getRequestDispatcher("createaccount.jsp").forward(request, response);
   	 			}
   	 			
   	 			}
   	 		}catch(NullPointerException e) {
   	 			
   	 		}
   	 		
   	 	// must be in bounds of the list to generate
   	 		int random;
   	 	random = ThreadLocalRandom.current().nextInt(5);
   	 	while(random < 0 || random > 5) {
   	 	random = ThreadLocalRandom.current().nextInt(5);
   	 	}
   	 		
	 		if(userlist == null) {
	 			userlist = new ArrayList<User>();
	 		}
	 		try {
	 		if(!confirmed.equals(confirmed)) {
	 			request.getRequestDispatcher("craeteaccount.jsp").forward(request, response);
	 		}
	 		}catch (NullPointerException e){
	 			
	 		}
	 		
	 		User newUser = new User(first_name, last_name, username, password, email, profilepics[random]);
	 		
	 		StringBuilder build = new StringBuilder();
	 		
	 		for(int i = 0; i < password.length();i++) {
	 			build.append("*");
	 		}
	 		
	 		context.setAttribute("Accounts", this);
	 		context.setAttribute("Email", newUser.getEmail());
	 		context.setAttribute("Password", password);
	 		context.setAttribute("Hidden", build);
	 		context.setAttribute("fullname", newUser.getFirstName() + " " + newUser.getLastName());
	 		context.setAttribute("loggedinUser", newUser);
	 		context.setAttribute("username", username);
	 		context.setAttribute("profilepicture", newUser.getprofilepic() ); //by default 
	 		userlist.add(newUser);
	 		loggedin= true;
	 		request.getRequestDispatcher("profile.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletContext context = request.getServletContext();
    	User loggedinuser = (User) context.getAttribute("loggedinUser");
    	context.setAttribute("account", this);
    	 String home = request.getParameter("Home");// check if the button is pressed
    	 String Cart = request.getParameter("Cart");// check if the button is pressed
    	 String Products = request.getParameter("Products");// check if the button is pressed
    	 String logoff = request.getParameter("logoffbutton");		
    	 String email = request.getParameter("Email");
    	 String password = request.getParameter("Password");
    	 String login = request.getParameter("Login");
    	 String cardsetup = request.getParameter("cardsetup");
    	 String edituser = request.getParameter("edituser");
    	 
    	 
    	 if(userlist == null) {
    		 userlist = new ArrayList<User>();
    	 }
    	 try {
    		 if(edituser.equals("edituser")) {
    			 request.getRequestDispatcher("EditUser.jsp").forward(request, response);
    		 }
    		 
    	 }catch(NullPointerException e) {
    		 
    	 }
    	 
    	 try {
    		 if(cardsetup.equals("cardsetup") && loggedin) {
    			 request.getRequestDispatcher("setupcard.jsp").forward(request, response);
    		 }
    		 else if(cardsetup.equals("history")) {
    			 request.getRequestDispatcher("History.jsp").forward(request, response);
    		 }
    		 else {
    			 request.getRequestDispatcher("setlocation.jsp").forward(request, response);
    		 }
    		 
    		 
    	 } catch(NullPointerException e) {
    		 
    	 }
    	 
    	 try {
    		 if(login.equals("Login") && loggedin) {
    			 request.getRequestDispatcher("profile.jsp").forward(request, response);
    		 }
    		 
    		 
    	 } catch(NullPointerException e) {
    		 
    	 }
    	 
    	 try {
 			if(home.equals("Home")) {
 	        	request.getRequestDispatcher("index.jsp").forward(request, response);
 	        }
 			else if(home.equals("Signin")) {
 				request.getRequestDispatcher("login.jsp").forward(request, response);
 			}
 		} catch (NullPointerException e) {
 		}
    	 
    	 try {
 			if(!loggedin) {
 				for(User user : userlist) {
 					
 					if(user.getEmail().equals(email) && user.getPassword().equals(password)) {
 						
 						StringBuilder build = new StringBuilder();
 						
 						for(int i = 0; i < password.length();i++) {
 				 			build.append("*");
 				 		}
 						//if the user is found we must set the attributes back to that user in the list
 						context.setAttribute("Email", email);
 				 		context.setAttribute("Password", password);
 				 		context.setAttribute("Hidden", build);
 				 		context.setAttribute("fullname", user.getFirstName() + " " + user.getLastName());
 				 		context.setAttribute("loggedinUser", user);
 				 		context.setAttribute("username", user.getUserName());
 				 		context.setAttribute("profilepicture", user.getprofilepic() ); //by default 
 						loggedin = true;
 						request.getRequestDispatcher("profile.jsp").forward(request, response);
 					}
 					else if(user.getEmail().equals(email) && !user.getPassword().equals(password)) {
 						request.getRequestDispatcher("login.jsp").forward(request, response);
 					}
 				}
 	        	
 	        }
 		} catch (NullPointerException e) {
 		}
    	 
		


    	 try {
 			if(Products.equals("Products")) {
 	        	request.getRequestDispatcher("Products.jsp").forward(request, response);
 	        }
 		} catch (NullPointerException e) {
 		}
    	 try {
  			if(logoff.equals("logoffbutton")) {
  				loggedin = false;
  				context.setAttribute("Email", email);
			 		context.removeAttribute("Password");
			 		context.removeAttribute("Hidden");
			 		context.removeAttribute("fullname");
			 		context.removeAttribute("loggedinUser");
			 		context.removeAttribute("username");
			 		context.removeAttribute("profilepicture" ); //by default 
			 		context.removeAttribute("Subtotal");
			 		context.removeAttribute("updatedamount");
  	        	request.getRequestDispatcher("index.jsp").forward(request, response);
  	        }
  		} catch (NullPointerException e) {
  		}
    	 try {
  			if(Cart.equals("Cart") && loggedin) {
  	        	request.getRequestDispatcher("Cart.jsp").forward(request, response);
  	        }
  			
  		} catch (NullPointerException e) {
  		}
    	 
    	 request.getRequestDispatcher("createaccount.jsp").forward(request, response);
		
	}
	
    public  void edituser(User edituser,String orignalemail){
        for (int i = 0; i < userlist.size(); i++) {
            if (userlist.get(i).getEmail().equals(orignalemail)) {//identify by the OG user email 
                userlist.set(i, edituser); // Replace the old user with the edited user
                break;
            }
     
        }
    }


}





