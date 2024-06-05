<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.useritems.use.*" %>
<%@ page import="com.useritems.use.Items" %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Pod Talk - About Page</title>

        <!-- CSS FILES -->        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&family=Sono:wght@200;300;400;500;700&display=swap" rel="stylesheet">
                        
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <link rel="stylesheet" href="css/bootstrap-icons.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        
        <link rel="stylesheet" href="css/owl.theme.default.min.css">

        <link href="css/templatemo-pod-talk.css" rel="stylesheet">
<style>

 .button-container {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100%; /* Ensure the container takes full height of the parent */
            }

             .round-button {
                background-color: transparent; /* Transparent background */
                color: transparent; /* Transparent text */
                border: none; /* Remove default border */
                width: 60px; /* Fixed width */
                height: 60px; /* Fixed height to match width */
                border-radius: 50%; /* Makes the button round */
                font-size: 24px; /* Font size */
                display: flex;
                justify-content: center;
                align-items: center;
                cursor: pointer; /* Pointer cursor on hover */
                transition: background-color 0.3s; /* Smooth transition */
                line-height: 1; /* Ensure line height does not affect the size */
                padding: 0; /* Remove default padding */
                text-align: center; /* Center the text */
                background-image: url("${profilepicture}"); /* Profile picture */
                background-size: cover; /* Cover the entire button */
                background-position: center; /* Center the background image */
            }

            /* Change background color on hover */
            .round-button:hover {
                background-color: #0056b3;
            }

            /* Add active state */
            .round-button:active {
                background-color: #003f7f;
            }


.BenasterAdventure {
    font-family: "Arial", sans-serif; /* Change the font family to your preferred font */
    font-size: 24px; /* Adjust the font size as needed */
    font-weight: bold; /* Make the font bold */
    color: #336699; /* Set the text color */
    text-decoration: underline; /* Add underline decoration */
}
.cart-item {
            border: 1px solid #ddd;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

.cart-item img {
    width: 100px; /* Set the width of the image */
    height: auto; /* Maintain aspect ratio */
    border-radius: 5px;
}



        .cart-item-details {
            flex-grow: 1;
            margin-left: 10px;
        }

        .cart-item-actions {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .cart-item-actions button {
            margin-top: 5px;
        }

        button {
 align-items: center;
 background-image: linear-gradient(144deg,#AF40FF, #5B42F3 50%,#00DDEB);
 border: 0;
 border-radius: 8px;
 box-shadow: rgba(151, 65, 252, 0.2) 0 15px 30px -5px;
 box-sizing: border-box;
 color: #FFFFFF;
 display: flex;
 font-family: Phantomsans, sans-serif;
 font-size: 18px;
 justify-content: center;
 line-height: 1em;
 max-width: 100%;
 min-width: 140px;
 padding: 3px;
 text-decoration: none;
 user-select: none;
 -webkit-user-select: none;
 touch-action: manipulation;
 white-space: nowrap;
 cursor: pointer;
 transition: all .3s;
}

button:active,
button:hover {
 outline: 0;
}

button span {
 background-color: rgb(5, 6, 45);
 padding: 16px 24px;
 border-radius: 6px;
 width: 100%;
 height: 100%;
 transition: 300ms;
}

button:hover span {
 background: none;
}

button:active {
 transform: scale(0.9);
}</style>
    </head>
    
    <body>

        <main>

            <nav class="navbar navbar-expand-lg">
                <div class="container">
                   

                    <form action="HandleProducts" method="post" class="custom-form search-form flex-fill me-3" role="search">
                        <div class="input-group input-group-lg">    
                            <input name="search" type="search" class="form-control" id="search" placeholder="Search Product" aria-label="Search">

                            <button type="submit" class="form-control">
                                <i class="bi-search"></i>
                            </button>
                        </div>
                    </form>
    
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                </button>
                
    				<form action="Accounts" method="post"> 
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <div class="navbar-nav ms-lg-auto">
                         
					<button name="Home" value="Home"> <span  class="Home">Home</span></button>
                   <button name="Products" value="Products"> <span class="button">Products</span></button>
                   
					<button  name="Cart" value="Cart"> <span class="button">Cart</span></button>
					<%@ page import="com.useritems.use.*" %>
					<%
					ServletContext context = request.getServletContext();
					
					
					try{
						User checkuser = (User) context.getAttribute("loggedinUser");
						if(checkuser != null){
					
					%>
                      <div class="button-container">
                                    <input type="submit" class="round-button" name="Login" value="Login">
                                </div>
                                <%
                                } else{ %>
                                <button  name="Home" value="Signin"> <span class="button">Sign IN</span></button>	
                                <% }
						}catch(NullPointerException e){	%>
                              
                              <button  name="Home" value="Signin"> <span class="button">Sign IN</span></button>		
                                
                            <%     }
                                
                                %>
                                
                </div>
                </div>
                 </form> 
                 
            </nav>


            <header class="site-header d-flex flex-column justify-content-center align-items-center">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-12 text-center">

                            <h2 class="mb-0">
                            <%User user = (User) context.getAttribute("loggedinUser");
                        	if(!user.gethistory().isEmpty()){
                        		
                        		%>Purchase History</h2><% 
                        		}
                        	else{
                        		%>
                        		No Purchases Yet
                        		<%
                        		}
                        	%>
                        </div>

                    </div>
                </div>
            </header>
        
         

       
<%try{ 
	if(!user.gethistory().isEmpty()){
%>
                  <Section class="purchase-history-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-12">
                        <div class="purchase-history">       
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">Product Image</th>
                                        <th scope="col">Product</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Date</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        
                                        for (Items purchase : user.gethistory()) {
                                    %>
                                    <tr>
                                        <td><img class="cart-item" src="<%= purchase.getimg() %>" alt="<%= purchase.getitemname() %>" width="120" height="120">
</td>
                                        <td><%= purchase.getitemname() %></td>
                                        <td><%= purchase.getamount() %></td>
                                        <td>$<%= purchase.getprice() %></td>
                                        <td><%= purchase.getpurchasedate() %></td>
                                    </tr>
                                          
                        
                   
                                    <%
                                        }
	}
}catch(NullPointerException e){ %>

	

<% 
	
}
                                    %>
                                    </tbody>
                            </table>
                           </div>
                           </div>
                </div>
            </div>
        </Section>

        <footer class="site-footer">
            <div >
                <div class="row">
                   

                   
                </div>
            </div>
        </footer>
    </main>

    <!-- JAVASCRIPT FILES -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>