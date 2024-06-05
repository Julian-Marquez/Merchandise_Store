

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;

//import java.util.Date;
import com.useritems.use.*;
import com.useritems.use.Items;
/**
 * Servlet implementation class HandleCart
 */
public class Card extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    public Card() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletContext context = request.getServletContext();
		User loggedinuser = (User) context.getAttribute("loggedinUser");
		 LocalDate currentDate = LocalDate.now();
		 LocalDateTime currentDateTime = LocalDateTime.now();
		   int currentMonth = currentDate.getMonthValue();
	        int currentYear = currentDate.getYear();
	        
		 String cvv = request.getParameter("cvc");
		 String month = request.getParameter("expiration-month");
		 String year = request.getParameter("experation-year");
		 String card_num = request.getParameter("credit-card-num");
		 String cardname = request.getParameter("name");
		 String address= request.getParameter("address");
	        String state =request.getParameter("state");
	        String city = request.getParameter("city");
	        String zip = request.getParameter("zipcode");
	        
	        
	        
	        
	        int zipcode;
		 
	       int expMonth;
	        int expYear;
	        
	        try {
	            zipcode = Integer.parseInt(zip);
	            if(address != null) {
	            loggedinuser.setshippment(address, city, state, zipcode);
	            if(loggedinuser.getcardname() != null) {
	            	for(Items purchases : loggedinuser.getallitems()) {
	        			loggedinuser.sethistory(purchases);
	        			purchases.purchasedate(currentDateTime);
	        		}
	            	request.getRequestDispatcher("Confirmed.jsp").forward(request, response);
	            }
	            else {
	            	 request.getRequestDispatcher("Checkout.jsp").forward(request, response);
	            }
	            }
	        } catch (NumberFormatException e) {
	        	
	        }

	        try {
	            expMonth = Integer.parseInt(month);
	            expYear = Integer.parseInt(year);
	        } catch (NumberFormatException e) {
	        	request.getRequestDispatcher("Checkout.jsp").forward(request, response);
	            return;
	        }
		
	        if (expYear < currentYear || (expYear == currentYear && expMonth < currentMonth)) {
	        	request.getRequestDispatcher("Checkout.jsp").forward(request, response);
	            return;
	        }
	        
		 if(cvv.length() != 3){
			 request.getRequestDispatcher("Checkout.jsp").forward(request, response);
			 
		 }
		 //get the logged in user and sets them to card information to it
		loggedinuser.setCard(cvv,month,card_num,cardname);
		context.setAttribute("cvv", cvv);
		context.setAttribute("card_month", month);
		context.setAttribute("card_num", card_num);
		context.setAttribute("card_year", year);
		context.setAttribute("cardname", cardname);
		if(loggedinuser.getshipmentinfo()) {
			 request.getRequestDispatcher("Checkout.jsp").forward(request, response);
		}
		else {
			request.getRequestDispatcher("location.jsp").forward(request, response);
		}
		try {
        	if(loggedinuser.iscardinfo() && !loggedinuser.getallitems().isEmpty() && loggedinuser.getshipmentinfo()) {
        		
        		for(Items purchases : loggedinuser.getallitems()) {
        			loggedinuser.sethistory(purchases);
        			purchases.purchasedate(currentDateTime);
        		}
        		request.getRequestDispatcher("Confirmed.jsp").forward(request, response);
        	}else if(loggedinuser.getcity() == null && loggedinuser.getcardname() != null){
        		request.getRequestDispatcher("location.jsp").forward(request, response);
        	}else if(loggedinuser.getaddress() != null && loggedinuser.getcardnum() == null) {
        		request.getRequestDispatcher("Checkout.jsp").forward(request, response);
        	}
        	
        	
        }catch(NullPointerException e) {
        	request.getRequestDispatcher("Cart.jsp").forward(request, response);

        }
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServletContext context = request.getServletContext();
		User loggedinuser = (User) context.getAttribute("loggedinUser");
		 LocalDate currentDate = LocalDate.now();
		   int currentMonth = currentDate.getMonthValue();
	        int currentYear = currentDate.getYear();
	        String cvv;
		  cvv = request.getParameter("cvc");
		 String month = request.getParameter("expiration-month");
		 String year = request.getParameter("experation-year");
		 String card_num = request.getParameter("credit-card-num");
		 String cardname = request.getParameter("name");
		 String zip = request.getParameter("zipcode");

		 
	        String address= request.getParameter("address");
	        String state =request.getParameter("state");
	        String city = request.getParameter("city");
	        int zipcode;
	        
	        
	        try {
	            zipcode = Integer.parseInt(zip);
	            if(address != null) {
	            loggedinuser.setshippment(address, city, state, zipcode);
	            request.getRequestDispatcher("profile.jsp").forward(request, response);
	            }
	        } catch (NumberFormatException e) {
	        //	request.getRequestDispatcher("setlocation.jsp").forward(request, response);
	           // return;
	        }
	        
		 
	       int expMonth;
	        int expYear;

	        try {
	            expMonth = Integer.parseInt(month);
	            expYear = Integer.parseInt(year);
	        } catch (NumberFormatException e) {
	        	request.getRequestDispatcher("setupcard.jsp").forward(request, response);
	            return;
	        }
		
	        if (expYear < currentYear || (expYear == currentYear && expMonth < currentMonth)) {
	        	request.getRequestDispatcher("setupcard.jsp").forward(request, response);
	            return;
	        }
	        
		 if(cvv.length() != 3){
			 request.getRequestDispatcher("setupcard.jsp").forward(request, response);
			 
		 }
		 //get the logged in user and sets them to card information to it
		loggedinuser.setCard(cvv,month,card_num,cardname);
		
		context.setAttribute("cvv", cvv);
		context.setAttribute("card_month", month);
		context.setAttribute("card_num", card_num);
		context.setAttribute("card_year", year);
		context.setAttribute("cardname", cardname);
		request.getRequestDispatcher("profile.jsp").forward(request, response);
	}
	

}
