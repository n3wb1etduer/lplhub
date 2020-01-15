<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, org.lanqiao.entity3.Product"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>register</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/fasthover.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //Custom Theme files -->
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- js -->
    <script src="js/jquery.min.js"></script>
    <link rel="stylesheet" href="css/jquery.countdown.css" /> <!-- countdown -->
    <!-- //js -->
    <!-- web fonts -->
    <link href='http://fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <!-- //web fonts -->
    <!-- start-smooth-scrolling -->
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
</head>
<body>
<div class="header" id="home1">
    <div class="container">
         <div class="w3l_login"style="
				text-shadow: 4px 4px 8px darkgray;
				font-size: 120%;">
            <a href="single.html" data-toggle="modal" data-target="#myModal88" style="border: none;font-size: 150%;color: black;margin: 0px -40px;"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
            <a href="login.jsp" style="border:none;height: 60px;width: 80px;color: black;margin: -20px 40px"><i class="fa fa-sign-in" style="font-size: 200%;"></i><br />跳转登录</a>
            <!--登录跳转-->
        </div>
        <div class="w3l_logo">
            <img src="images/logo.png" style="text-align:center;margin:0px -140px"/>
            <!--<h1><a href="index.html">LPL hub<span>Your stores. Your place.</span></a></h1>-->
        </div>

        <div class="cart cart box_1">
            <form action="#" method="post" class="last">
                <input type="hidden" name="cmd" value="_cart">
                <input type="hidden" name="display" value="1">
                <button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
                <!--购物车跳转-->
            </form>
        </div>
    </div>
</div>
<div class="navigation" style="background-color: #000000;">
    <div class="container">
        <nav class="navbar navbar-default">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header nav_2">
                <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                <ul class="nav navbar-nav">
                    <li><a href="index.html" class="act">Home</a></li>
                    <!-- Mega Menu -->
                    <li class="dropdown">
                        <a href="http://localhost:8099/Cart/index2.jsp" class="dropdown-toggle" data-toggle="">Products <b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">

                        </ul>
                    </li>
                    <li><a href="cart.jsp">cart</a></li>
                    <li>
								<a href="order.jsp">order</a>
							</li>
                    <li><a href="mail.html">Mail Us</a></li>
                </ul>
            </div>
        </nav>
    </div>
</div>
<div class="about">
    <div class="container">
        <div class="register">
        
        	<form class="form-horizontal" role="form"  action = "http://localhost:8099/Cart/RegisterServlet"  method="post">
            
                <div class="register-top-grid">
                    <h3>PERSONAL INFORMATION</h3>                   
                    <div>
                        <span>Email Address/QQ/Phone<label>*</label></span>
                        <input type="text" name="email">
                    </div>
                    <div class="clearfix"> </div>
                    <a class="news-letter" href="#">
                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>Sign Up for Newsletter</label>
                    </a>
                </div>
                <div class="register-bottom-grid">
                    <h3>LOGIN INFORMATION</h3>
                    <div>
                        <span>Password<label>*</label></span>
                        <input type="password" name="password">
                    </div>
                    <div>
                        <span>Confirm Password<label>*</label></span>
                        <input type="password" name="password1">
                    </div>
                    <div class="clearfix"> </div>
                </div>
            
            <div class="clearfix"> </div>
            <div class="register-but">
            
                    <input type="submit" value="submit">
                    <div class="clearfix"> </div>
                
                
             </form>
                
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="container">
        <div class="w3_footer_grids">
            <div class="col-md-3 w3_footer_grid">
                <h3>Contact</h3>
                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse.</p>
                <ul class="address">
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>1234k Avenue, 4th block, <span>New York City.</span></li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">info@example.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1234 567 567</li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Information</h3>
                <ul class="info">
                    <li><a href="about.html">About Us</a></li>
                    <li><a href="mail.html">Contact Us</a></li>
                    <li><a href="codes.html">Short Codes</a></li>
                    <li><a href="faq.html">FAQ's</a></li>
                    <li><a href="products.html">Special Products</a></li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Category</h3>
                <ul class="info">
                    <li><a href="products.html">Mobiles</a></li>
                    <li><a href="products1.html">Laptops</a></li>
                    <li><a href="products.html">Purifiers</a></li>
                    <li><a href="products1.html">Wearables</a></li>
                    <li><a href="products2.html">Kitchen</a></li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Profile</h3>
                <ul class="info">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="products.html">Today's Deals</a></li>
                </ul>
                <h4>Follow Us</h4>
                <div class="agileits_social_button">
                    <ul>
                        <li><a href="#" class="facebook"> </a></li>
                        <li><a href="#" class="twitter"> </a></li>
                        <li><a href="#" class="google"> </a></li>
                        <li><a href="#" class="pinterest"> </a></li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="footer-copy">
        <div class="footer-copy1">
            <div class="footer-copy-pos">
                <a href="#home1" class="scroll"><img src="images/arrow.png" alt=" " class="img-responsive"></a>
            </div>
        </div>
        <div class="container">
            <p>中北软件园出品</p>
        </div>
    </div>
</div>
</body>
</html>