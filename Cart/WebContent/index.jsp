<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, org.lanqiao.entity3.Product"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
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
	<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>

	<div class="header" id="home1">
		<div class="container">
			
			<li style="float:right;margin-top:100px;list-style-type: none;"> 
								
								<%=
				
								"登陆成功, " + request.getSession().getAttribute("email") + " 欢迎您！！"							
								%><!-- JSP输出语句 -->
								
								<%//java代码 %>
								<!-- 语法 -->
												
				</li>	
		<div class="w3l_login" style="
				margin: 20px -10px;
				text-shadow: 4px 4px 8px darkgray;
				font-size: 120%;">
				
				<!--<a href="login.html" data-toggle="modal" data-target="#myModal88"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>-->
				<a href="login.jsp" style="border:none;height: 60px;width: 80px;color: black;"><i class="fa fa-sign-in" style="font-size: 200%;"></i><br />跳转登录</a>
				<!--登录跳转-->
			</div>
			<div class="w3l_login" style="
				margin: 20px 40px;
				text-shadow: 4px 4px 8px darkgray;
				font-size: 120%;">
				<a href="index.html" style="border:none;height: 60px;width: 80px;color: black;"><i class="fa fa-sign-out" style="font-size: 200%;"></i><br />退出登录</a>
			</div>
			<div class="w3l_logo" >
				<img src="images/logo.png" style="text-align:center;margin:0px -140px"/>
				<!--<h1><a href="index.html">LPL hub<span>Your stores. Your place.</span></a></h1>-->
			</div>

			<div class="cart cart box_1"> 
				<form action="#" method="post" class="last"> 
					<input type="hidden" name="cmd" value="_cart" />
					<input type="hidden" name="display" value="1" />
					<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
					<!--购物车跳转-->
				</form>   
			</div>  
		</div>
	</div>
	<!-- //header -->
	<!-- navigation -->
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
	<!-- //navigation -->
	<!-- banner -->
	<div class="banner" style="">
		
		<div class="container" style="width: calc(80%);">
				<div class="row clearfix">
					<div class="col-md-12 column">
						<div class="carousel slide" id="carousel-326873">
							<ol class="carousel-indicators">
								<li data-slide-to="0" data-target="#carousel-326873">
								</li>
								<li data-slide-to="1" data-target="#carousel-326873">
								</li>
								<li data-slide-to="2" data-target="#carousel-326873" class="active">
								</li>
							</ol>
							<div class="carousel-inner" >
								<div class="item">
									<img alt="" src="images/ppp2.jpg" />

								</div>
								<div class="item">
									<img alt="" src="images/as2.png" />

								</div>
								<div class="item active" >
									<img alt="" src="images/as3.png" />

								</div>
							</div>
							<a class="left carousel-control" href="#carousel-326873" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
							<a class="right carousel-control" href="#carousel-326873" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
						</div>
					</div>
				</div>
			</div>
	</div>
	<!-- //banner --> 
	<!-- banner-bottom -->
	<div class="banner-bottom"style="margin: -200px 0px;">
		<div class="container">
			<div class="col-md-5 wthree_banner_bottom_left">
				<div style="margin: 60px 0px;">
					<!--<a class="play-icon popup-with-zoom-anim" href="#small-dialog">
						<span class="glyphicon glyphicon-expand" aria-hidden="true"></span>
					</a>-->
					<video src="images/IMDB640X480.mp4" type="video/mp4" width="400" height="300" controls>
  						<!--<source src="movie.mp4" type="video/mp4">
  						<source src="movie.ogg" type="video/ogg">-->

					</video>
					<!--播放视频-->
				</div> 
					<!-- pop-up-box -->     
					<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
					<!--//pop-up-box -->
					<div id="small-dialog" class="mfp-hide">
						<iframe src=""></iframe>
					</div>
					<script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
					</script>
			</div>
			<div class="col-md-7 wthree_banner_bottom_right">
				<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">

					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									
										<img src="images/logo1.1.jpg" " class="img-responsive" />


									<h5><a href="single.html">American movie 1</a></h5>

								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									
									<img src="images/logo8.jpg" " class="img-responsive" />
									
									<h5><a href="single.html">American movie 2</a></h5>

								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">

									<img src="images/logo12.1.jpg" alt=" " class="img-responsive" />
									<h5><a href="single.html">American movie 3</a></h5>

								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
										<img src="images/007.jpg"  class="img-responsive" />
									<h5><a href="single.html">American movie 1</a></h5>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<img src="images/蜘蛛侠.jpg"  class="img-responsive" />
									<h5><a href="single.html">American movie 2</a></h5>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<img src="images/狮子王.jpg" alt=" " class="img-responsive" />
									<h5><a href="single.html">American movie 3</a></h5>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div> 
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //banner-bottom --> 
	<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >中北软件园</a></div>
	<!-- modal-video -->
	<!-- //modal-video -->
	<!-- banner-bottom1 -->
	<div class="banner-bottom1" style="margin: 180px 0px;">
		<div class="agileinfo_banner_bottom1_grids">
			<div class="col-md-7 agileinfo_banner_bottom1_grid_left">
			</div>
			<div class="col-md-5 agileinfo_banner_bottom1_grid_right">
				<div class="timer_wrap">
					<div id="counter"> </div>
				</div>
				<script src="js/jquery.countdown.js"></script>
				<script src="js/script.js"></script>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>


	<div class="footer">
		<div class="container">
			<div class="w3_footer_grids">
				<div class="col-md-3 w3_footer_grid">
					<h3>Contact</h3>
					<p>Duis aute irure dolor in reprehenderit in voluptate velit esse.</p>
					<ul class="address">
						<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>TianRuan <span>TJ.</span></li>
						<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">TianRuan@TJ.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+110</li>
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
					<a href="#home1" class="scroll"><img src="images/arrow.png" alt=" " class="img-responsive" /></a>
				</div>
			</div>
			<div class="container">
				<p>中北软件园出品</p>
			</div>
		</div>
	</div>

  
</body>
</html>