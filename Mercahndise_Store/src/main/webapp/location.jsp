<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title> Product Shipment</title>
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
            /* Add your styles here */
            .button-container {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100%;
            }
            .round-button {
                background-color: transparent;
                color: transparent;
                border: none;
                width: 60px;
                height: 60px;
                border-radius: 50%;
                font-size: 24px;
                display: flex;
                justify-content: center;
                align-items: center;
                cursor: pointer;
                transition: background-color 0.3s;
                line-height: 1;
                padding: 0;
                text-align: center;
                background-image: url("${profilepicture}");
                background-size: cover;
                background-position: center;
            }
            .round-button:hover {
                background-color: #0056b3;
            }
            .round-button:active {
                background-color: #003f7f;
            }
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
            .shipment-form {
                border: 1px solid #ddd;
                padding: 20px;
                border-radius: 10px;
                background-color: #f9f9f9;
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
                                        <button name="Home" value="Home"> <span class="Home">Home</span></button>
                                        <button name="Products" value="Products"> <span class="button">Products</span></button>
                                        <button name="Cart" value="Cart"> <span class="button">Cart</span></button>
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
                            <h2 class="mb-0">Shipment Details</h2>
                        </div>
                    </div>
                </div>
            </header>
            <section class="about-section section-padding" id="section_2">
                <form action="Card" method="get">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 col-12 mx-auto shipment-form">
                                <div class="pb-3">
                                    <div class="section-title-wrap mb-4">
                                        <h4 class="section-title">Shipment Details</h4>
                                    </div>
                                    <div class="mb-3">
                                        <label for="address" class="form-label">Address</label>
                                        <input type="text" class="form-control" id="address" name="address" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="city" class="form-label">City</label>
                                        <input type="text" class="form-control" id="city" name="city" required>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 mb-3">
                                            <label for="state" class="form-label">State</label>
                                            <input type="text" class="form-control" id="state" name="state" required>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <label for="postalCode" class="form-label">Postal Code</label>
                                            <input type="text" class="form-control" id="zipcode" name="zipcode" required>
                                        </div>
                                    </div>
                                    <button  name="Cart" value="Cart"> <span class="button">Submit</span></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </section>
        </main>
        <footer class="site-footer">   
            <div class="container">
                <div class="row">
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
                            <li class="site-footer-link-item">
                                <a href="#" class="site-footer-link">Homepage</a>
                            </li>
                            <li class="site-footer-link-item">
                                <a href="#" class="site-footer-link">Contact Us</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-12">
                        <p class="copyright-text mb-0">Copyright © 2024 Beanster Productions<br><br></p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- JAVASCRIPT FILES -->
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>
