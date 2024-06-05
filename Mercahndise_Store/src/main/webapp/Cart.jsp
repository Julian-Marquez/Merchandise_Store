<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.useritems.use.*" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Pod Talk - Cart Page</title>

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
            .BenasterAdventure {
                font-family: "Arial", sans-serif;
                font-size: 24px;
                font-weight: bold;
                color: #336699;
                text-decoration: underline;
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
                max-width: 100px;
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

            .total-price {
                font-size: 24px;
                font-weight: bold;
                text-align: right;
            }
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
            
        </style>
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
                   <div class="collapse navbar-collapse" id="navbarNav">
                        <div class="navbar-nav ms-lg-auto">
                           <form action="Accounts" method="post">  
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <div class="navbar-nav ms-lg-auto">
                         
					<button name="Home" value="Home"> <span  class="Home">Home</span></button>
                   <button name="Products" value="Products"> <span class="button">Products</span></button>
					<button  name="Cart" value="Cart"> <span class="button">Cart</span></button>
                      <div class="button-container">
                                    <input type="submit" class="round-button" name="Login" value="Login">
                                </div>  
                </div>
                </div>
                </form> 
                        </div>

                    </div>
                </div>
            </nav>

            <header class="site-header d-flex flex-column justify-content-center align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-12 text-center">
                            <h2 class="mb-0">Your Shopping Cart</h2>
                        </div>
                    </div>
                </div>
            </header>
            
            <section class="cart-section section-padding" id="cart_section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-12">
                            <div class="section-title-wrap mb-5">
                                <h4 class="section-title">Items in your cart</h4>
                            </div>

							  
  <div id="cart-container" class="cart"></div>
  <%@ page import="com.useritems.use.User, com.useritems.use.Items" %>
  <%@ page import="java.text.DecimalFormat" %>
         <%
         ServletContext context = request.getServletContext();
         DecimalFormat df = new DecimalFormat("#.00");
         
         int allitemamounts = 0;
         double absoulutetotal = 0;
 		try {
			
			User loggedinuser = (User) context.getAttribute("loggedinUser");
			
			for(Items items : loggedinuser.getallitems()) {
				allitemamounts++;
				String get = df.format(items.gettotalprice());
				absoulutetotal += Double.parseDouble(get);
				
				context.setAttribute("crunchtotal",get);
				context.setAttribute("itemimg", items.getimg());
				context.setAttribute("itemAmount",Integer.toString(items.getamount()));
				context.setAttribute("Subject"  , items.getsubject());
				context.setAttribute("itemname", items.getitemname());
				context.setAttribute("itemprice",Double.toString(items.getprice()));
				context.setAttribute("itemtax",Double.toString(items.gettax()));
				context.setAttribute("name", items.getitemname());
				context.setAttribute("itemid",items.getitemname());
				
				%>
				
				 <div class="cart-item">
                                    <img src="${itemimg}" alt="${itemimg}">
                                    <div class="cart-item-details">
                                        <h4>${Subject}</h4>
                                        <p>${name }<p>
                                        <p>Each: $${itemprice} <p>
                                        <p>Quantity: ${itemAmount} <p>
                                        <p>Total: $${crunchtotal}	</p>
                                    </div>
                                    <div class="cart-item-actions">
                                        <form action="UpdateCart" method="post">
                                            <input type="hidden" name="itemid" value="${itemid}">
                                            <button type="submit" name="action" value="remove">Remove</button>
                                            <button type="submit" name="action" value="increase">+</button>
                                            <button type="submit" name="action" value="decrease">-</button>
                                        </form>
                                    </div>
                                </div>
				
				
		<%	}  %>
			
			<% 
			
		}catch(NullPointerException e) {%>
		
		
		<h3>Cart is Empty </h3>
		
	<%	}
 		
 		context.setAttribute("abs",df.format(absoulutetotal));
 		context.setAttribute("allitemsamount",allitemamounts);
        %>   
        

                            <!-- Cart Items -->
                               
                                
                               
                                
                                
                               
                            <!-- Total Price -->
                            <div class="total-price">
                                Total: $${abs}
                            </div>

                            <!-- Checkout Button -->
                            <div class="text-right mt-4">
                            <form action="UpdateCart" method="get">
                                <button name="checkout" value="checkout" class="btn btn-primary">Proceed to Checkout</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>

        <footer class="site-footer">   
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-12 mb-5 mb-lg-0">
                       
                    </div>

                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-md-0 mb-lg-0">
                        <h6 class="site-footer-title mb-3">Contact</h6>
                        <p class="mb-2"><strong class="d-inline me-2">Phone:</strong> 010-020-0340</p>
                        <p><strong class="d-inline me-2">Email:</strong><a href="#">Beanster Productions</a></p>
                    </div>
                </div>
            </div>

            <div class="container pt-5">
                <div class="row align-items-center">
                    <div class="col-lg-2 col-md-3 col-12"></div>
                    <div class="col-lg-7 col-md-9 col-12">
                        <ul class="site-footer-links">
                            <li class="site-footer-link-item"><a href="#" class="site-footer-link">Homepage</a></li>
                            <li class="site-footer-link-item"><a href="#" class="site-footer-link">Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-12">
                        <p class="copyright-text mb-0">
