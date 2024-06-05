<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Pod Talk - Login Page</title>

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

            .login-form {
                max-width: 500px;
                margin: 0 auto;
                padding: 30px;
                border: 1px solid #ddd;
                border-radius: 5px;
                background: #fff;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
            }

            .login-form h2 {
                margin-bottom: 20px;
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
                            <h2 class="mb-0">Login to Your Account</h2>
                        </div>
                    </div>
                </div>
            </header>
            
            <section class="login-section section-padding" id="login_section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-12">
                            <div class="login-form">
                                <h2>Login</h2>
                                <form action="Accounts" method="post">
                                    <div class="mb-3">
                                        <label for="email" class="form-label">Email address</label>
                                        <input type="email" name="Email" id="subscribe-email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email Address" required="">
                                    </div>
                                    <div class="mb-3">
                                        <label for="password" class="form-label">Password</label>
                                        <input type="password" name="Password" class="form-control" placeholder="*******" required>
                                    </div>
                                    <button type="submit" > <span  class="Home">Log in</span></button>
                                   
                                </form>
                                <form action="Accounts" method="post">
                                 <button type="submit" value="sign up" > <span   class="Home">Sign up</span></button>
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
                        <p class="copyright-text mb-0">Copyright © 2024 Beanster Productions</p>
                    </div>
                </div>
            </div>
        </footer>

        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>
