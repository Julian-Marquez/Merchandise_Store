
import com.useritems.use.User;
import com.useritems.use.*;
import com.useritems.use.Items;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class EditUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 
 
    public EditUser() {
        //super();
        
    }
    

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("EditUser.jsp").forward(request, response);
		ServletContext context = request.getServletContext();
		

		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Note: the user should only have acces to this if the user is logged in, if not, Servlet will throw null error
		
		
		ServletContext context = request.getServletContext();
		User edituser = (User) context.getAttribute("loggedinUser");// gets the current logged in user
		Accounts account = (Accounts) context.getAttribute("account");
	        //options for the user to edit
	        String editpassword = request.getParameter("editpassword");
	        String editemail = request.getParameter("editemail");
	        String editfname = request.getParameter("editfname");
	        String editlname = request.getParameter("editlname");
	        String editusername = request.getParameter("editusername");
	        String editpic = request.getParameter("selectedProfilePic");
            String orignalemail = edituser.getEmail(); // in case the user changes there email
            
	        //if any of these are null then it wont change them
        
	            
	        if(!editpassword.equals(edituser.getPassword()) && !editpassword.isEmpty()) {
            	edituser.setPassword(editpassword);
            	context.setAttribute("Password", editpassword);
            }
            if(!editemail.equals(edituser.getEmail()) && !editemail.isEmpty()) {
            	edituser.setEmail(editemail);
            	context.setAttribute("Email", editemail);
            }
            if(!editfname.equals(edituser.getFirstName()) && !editfname.isEmpty()) {
            	edituser.setFirstName(editfname);
            }
            if(!editlname.equals(edituser.getLastName()) && !editlname.isEmpty()) {
            	edituser.setLastName(editlname);
            }
            if(!editusername.equals(edituser.getUserName()) && !editusername.isEmpty()) {
            	edituser.setUserName(editusername);
            	context.setAttribute("username", editusername);
            }
            if(!editpic.equals(edituser.getprofilepic()) && !editpic.isEmpty()) {
            	edituser.setprofilepic(editpic);
            	context.setAttribute("profilepicture", editpic);
            }
	        
            //this updates the full name wheater the user edited the first or last or even both
            context.setAttribute("fullname", edituser.getFirstName() + " " + edituser.getLastName());
            
            account.edituser(edituser, orignalemail);
            
            StringBuilder Hide = new StringBuilder(); //rebuild the new password
            for(int i = 0; i < edituser.getPassword().length(); i++) {
            	Hide.append("*");
            }
            context.setAttribute("Hidden", Hide); // new password lenght
            context.setAttribute("loggedinUser", edituser);
            request.getRequestDispatcher("profile.jsp").forward(request, response);
	        //doGet(request, response); // show the changes for  now
	}

}


