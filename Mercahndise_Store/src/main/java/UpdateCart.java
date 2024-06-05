

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import com.useritems.use.Items;
import com.useritems.use.User;
import java.time.LocalDateTime;  // Import the LocalDateTime class
import java.time.format.DateTimeFormatter; 

/**
 * Servlet implementation class UpdateCart
 */
public class UpdateCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCart() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext context = request.getServletContext();
        User loggedinuser = (User) context.getAttribute("loggedinUser");
        LocalDateTime currentDateTime = LocalDateTime.now();
        String checkout = request.getParameter("checkout");
        try {
        	if(checkout.equals(checkout) && loggedinuser.iscardinfo() && loggedinuser.getallitems() != null && loggedinuser.getshipmentinfo()) {
        		
        		ArrayList<Items> history = new ArrayList<Items>();
        		for(Items purchases : loggedinuser.getallitems()) {
        			loggedinuser.sethistory(purchases);
        			purchases.purchasedate(currentDateTime);
        		}
        		request.getRequestDispatcher("Confirmed.jsp").forward(request, response);
        	}
        	else if(!loggedinuser.getallitems().isEmpty() && !loggedinuser.iscardinfo()){
        		request.getRequestDispatcher("Checkout.jsp").forward(request, response);
        	} else if(loggedinuser.iscardinfo() && loggedinuser.getcity() == null) {
        		request.getRequestDispatcher("location.jsp").forward(request, response);
        	}
        	
        	
        }catch(NullPointerException e) {
        	
        }
        request.getRequestDispatcher("Cart.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        ServletContext context = request.getServletContext();
	        User loggedinuser = (User) context.getAttribute("loggedinUser");
	        String action = request.getParameter("action");
	        String itemid = request.getParameter("itemid");

	        if (loggedinuser == null || itemid == null || action == null) {
	            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid request parameters.");
	            return;
	        }

	        try {
	            Iterator<Items> iterator = loggedinuser.getallitems().iterator();
	            while (iterator.hasNext()) {
	                Items items = iterator.next();
	                if (items == null || items.getitemname() == null) continue;
	                
	                switch (action) {
	                    case "remove":
	                        if (items.getitemname().equals(itemid)) {
	                            iterator.remove();
	                            loggedinuser.removeitem(items);
	                        }
	                        break;
	                    case "increase":
	                        if (items.getitemname().equals(itemid)) {
	                            items.setamount(items.getamount() + 1);
	                        }
	                        break;
	                    case "decrease":
	                        if (items.getitemname().equals(itemid)) {
	                            items.setamount(items.getamount() - 1);
	                            if (items.getamount() == 0) {
	                                iterator.remove();
	                                loggedinuser.removeitem(items);
	                            }
	                        }
	                        break;
	                }
	            }
	        } catch (NullPointerException e) {
	            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while updating the cart.");
	            return;
	        }

	        request.getRequestDispatcher("Cart.jsp").forward(request, response);
	    }

}
