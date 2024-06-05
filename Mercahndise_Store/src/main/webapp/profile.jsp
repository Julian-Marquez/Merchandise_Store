<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<link href="css/profile.css" rel="stylesheet">
<style> 

.container {
  display: flex;
  justify-content: center; /* Center horizontally */
  align-items: center; /* Center vertically */
  height: 100vh;
  background-image: url('images/profile_background.png'); /* Set the background image */
  background-size: cover; /* Cover the entire container */
  background-position: center; /* Center the background image */
}
 <%@ page import="com.useritems.use.Accounts" %>
</style>
<body>
<div class="container">
  <div class="card">
     <img src="${profilepicture}"  alt="Person" class="card__image">
    <p class="card__name">${fullname}</p>
    <div class="grid-container">

      <div class="grid-child-followers">
        ${Email}
      </div>

      <div class="grid-child-followers">
        ${Hidden}
      </div>

    </div>
     <%@ page import="com.useritems.use.*" %>
    <form  action="Accounts" method="post">
    <button name="Home" value="Home" class="btn draw-border">Return Home</button>
    <button name="logoffbutton" value="logoffbutton" class="btn draw-border">Log Out</button>
    <button name="cardsetup" value="cardsetup" class="btn draw-border">
    <%
    		ServletContext context = request.getServletContext();
    try{
    	
    	User user = (User) context.getAttribute("loggedinUser");
    	if(user.getcardname() == null){%>Set Up Card
    	<% 	
    	}
    	else{
    	%>
    		Edit Card <%
    	}
    	
    }catch(NullPointerException e){
    	
    }%></button>
    <button name="edituser" value="edituser" class="btn draw-border">Edit Profile</button>
    <button name="cardsetup" value="setupshipmentlocation" class="btn draw-border"><%
    try{
    	
    	User user = (User) context.getAttribute("loggedinUser");
    	if(user.getaddress() == null){%>Set Shipment location
    	<% 	
    	}
    	else{
    	%>
    		Edit Shipment Location <%
    	}
    	
    }catch(NullPointerException e){
    	
    }%></button>
    <button name="cardsetup" value="history" class="btn draw-border">Purchase History</button>
    </form>
    </div>
  </div>
</body>
</html>
