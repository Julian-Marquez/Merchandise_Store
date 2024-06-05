<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Information</title>
    <link rel="stylesheet" href="css/productinfo.css">
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&family=Sono:wght@200;300;400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            background-image: url("images/productinfobacrground.png");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            font-family: 'Montserrat', sans-serif;
        }
        .carousel-item img {
            max-width: 100%;
            height: auto;
            margin: auto;
        }
        .carousel-caption {
            background: rgba(0, 0, 0, 0.5);
            padding: 10px;
            border-radius: 5px;
        }
        .carousel-control-prev, .carousel-control-next {
            filter: invert(100%);
        }
        .card {
            background-color: rgba(255, 255, 255, 0.8);
            border: none;
        }
        .card-title, .card-text {
            color: #333;
        }
        .navbar {
            background-color: rgba(255, 255, 255, 0.9);
        }
        .navbar-brand {
            font-family: 'Sono', sans-serif;
        }
        .nav-link {
            color: #333;
        }
        .nav-link:hover {
            color: #000;
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
 
 .dropdown-menu {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-menu a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-menu a:hover {
            background-color: #f1f1f1;
        }

        .dropdown:hover .dropdown-menu {
            display: block;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
<form action="Accounts" method="post">
    <div class="container">
        <a class="navbar-brand" href="#">Product Info</a>
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
           <button name="Home" value="Home"> <span  class="Home">Home</span></button>
                   <button name="Products" value="Products"> <span class="button">Products</span></button>
                   
					<button  name="Cart" value="Cart"> <span class="button">Cart</span></button>
					
        </div>
    </div>
    </form>
</nav>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-8">
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="${productpic1}" class="d-block w-100" alt="Product Image 1">
                        
                    </div>
                    <div class="carousel-item">
                        <img src="${productpic2}" class="d-block w-100" alt="Product Image 2">
                       
                    </div>
                    <div class="carousel-item">
                        <img src="${productpic3}" class="d-block w-100" alt="Product Image 3">
                        
                    </div>
                    <div class="carousel-item">
                        <img src="${productpic4}" class="d-block w-100" alt="Product Image 4">
                       
                    </div>
                    <div class="carousel-item">
                        <img src="${productpic5}" class="d-block w-100" alt="Product Image 5">
                      
                    </div>
                    <div class="carousel-item">
                        <img src="${productpic6}" class="d-block w-100" alt="Product Image 6">
                       
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="col-md-4">
        <form action="HandleProducts" method="get">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">${topic}</h5>
                    <p class="card-text">${description}</p>
                    <p class="card-text">Price: $${price}</p>
                     
                  <div class="form-group mt-3">
					    <label for="amount">Quantity</label>
					    <select name="amount" id="amount" class="form-control">
					        <!-- Add options for quantity -->
					        <option value="1">1</option>
					        <option value="2">2</option>
					        <option value="3">3</option>
					        <option value="4">4</option>
					        <option value="5">5</option>
					        <option value="6">6</option>
					        <option value="7">7</option>
					        <option value="8">8</option>
					        <option value="9">9</option>
					        <option value="10">10</option>
					    </select>
					</div>
					
					<div class="form-group mt-3">
					    <label for="menu">${choose}:</label>
					    <select name="menu" id="menu" class="form-control">
					 <%@ page import="com.useritems.use.HandleProducts" %>
					 <%
					 ServletContext context = request.getServletContext();
					        		
					    			try{
					    				HandleProducts productvalues = (HandleProducts) context.getAttribute("products");
					    				
					    			for(int i = 0; i < productvalues.getvalues().size(); i++) {
					    				String values = productvalues.getvalues().get(i);
					    				String options = productvalues.getoptions().get(i);
					    			
					    				context.setAttribute("value",values);
					    				context.setAttribute("option",options);
					 %>
					 <option value="${value}">${option}</option>
					 
				<%	} 
					    			}catch(NullPointerException e){
					    				
					    			}
				
				
				%>
				 </select>
					</div>
				
					
					
                </div>
                <input type="hidden" value="${price}">
                <button type="submit" name="BuyNow" value="BuyNow"> <span  class="Home">BuyNow</span></button>
                <button type="submit" name="Addtocart" value="Addtocart"> <span  class="Home">Add To Cart</span></button>
            </div>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
