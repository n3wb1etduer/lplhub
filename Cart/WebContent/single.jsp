<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, org.lanqiao.entity3.Product,java.sql.Connection,org.lanqiao.util3.JDBCUtil,java.sql.PreparedStatement,java.sql.ResultSet"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Single Page</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="bootstrap/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/bootstrap.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> 
<link href="css/fasthover.css" rel="stylesheet" type="text/css" media="all" />

<link href="css/font-awesome.css" rel="stylesheet"> 

<script src="js/jquery.min.js"></script> 
 
<link href='http://fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>

<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>

</head> 
<body> 
    <%String j=request.getParameter("RANK"); %>

                 

	<!-- header modal -->
	<div class="modal fade" id="myModal88" tabindex="-1" role="dialog" aria-labelledby="myModal88"
		aria-hidden="true">
		<!--一个按钮转到登录页面-->
	</div> 

	<div class="header" id="home1">
		<div class="container">
			<div class="w3l_login" >
				<div class="w3l_login" style="
				margin: 20px -10px;
				text-shadow: 4px 4px 8px darkgray;
				font-size: 120%;">
				<!--<a href="login.html" data-toggle="modal" data-target="#myModal88"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>-->
				<a href="login.html"style="border:none;height: 60px;width: 80px;color: black;"><i class="fa fa-sign-in" style="font-size: 200%;"></i><br />跳转登录</a>
				<!--登录跳转-->
			</div>
			<div class="w3l_login"style="
				margin: 20px 40px;
				text-shadow: 4px 4px 8px darkgray;
				font-size: 120%;">
				<a href="index.html"style="border:none;height: 60px;width: 80px;color: black;"><i class="fa fa-sign-out" style="font-size: 200%;"></i><br />退出登录</a>
			</div>
			<div class="w3l_logo" >
				<img src="images/logo.png" style="text-align:center;margin:0px -140px"/>
				<h1><a href="index.html" style="width:400px;border:none;margin:0px -180px">Know you.For you.</span></a></h1>
			</div>

			<div class="cart cart box_1"> 
				<form action="#" method="post" class="last"> 
					<input type="hidden" name="cmd" value="_cart" />
					<input type="hidden" name="display" value="1" />
					<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
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
						<li><a href="index.html">Home</a></li>	
						<!-- Mega Menu -->
						<li class="dropdown">
							<a href="http://localhost:8099/Cart/index2.jsp" class="dropdown-toggle" data-toggle="dropdown">Products <b class="caret"></b></a>
							<!--转到分页-->
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

	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<!--转到首页-->
				<li>Single Page</li>
			</ul>
		</div>
	</div>
	<div class="single">
		<div class="container">
		<%
						//List<Product> list = (List<Product>) request.getSession().getAttribute("33");
						//for (Product p : list) {
							//import java.sql.Connection;
							System.out.println(j);
					Connection conn = JDBCUtil.getConnection();
					PreparedStatement ps = conn.prepareStatement("select * from movie where rank =" +  j);
					ResultSet rs = ps.executeQuery();
					rs.next();
					Product p = new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8),rs.getInt(9),rs.getInt(10),rs.getString(11));					
					%>
			<div class="col-md-4 single-left">
				<div class="flexslider">
					<img src="<%=p.getCOVER()%>"  style="width:300px;height:400px"/>
					<!--电影图片-->
				</div>

					<script defer src="js/jquery.flexslider.js"></script>
					<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
					<script>
					// Can also be used with $(document).ready()
					$(window).load(function() {
					  $('.flexslider').flexslider({
						animation: "slide",
						controlNav: "thumbnails"
					  });
					});
					</script>

					<script src="js/imagezoom.js"></script>

			</div>
			<div class="col-md-8 single-right" >
				<!-- <h3>电影标题</h3> -->
				
				<div class="description" style="width:2300px;">
					
					<div class="col-md-4">
						<div class="thumbnail">
							<div class="video">
								<h3><strong>影片:</strong> <%=p.getTITLE()%></h3>
								<h4 style="color:gray;">CD价格: <%=p.getPRICE()%>&emsp;&emsp;库存: <%=p.getREMAIN()%></h4><hr size:"5px"; color:"black" noshade=false />
								<p style="font-size:calc(900%);"><strong>商品描述:</strong> <%=p.getDESCRIPTION()%></p>
								
							</div>
						</div>
					</div>
					<%
						//}
					%>

				</div>
				<div class="color-quality">
					<div class="color-quality-right">
						<!-- <h5>数量 :</h5> -->
						 <div class="quantity"> 
							<div class="quantity-select">                           
								<!-- <div class="entry value-minus1">&nbsp;</div>
								<div class="entry value1"><span>1</span></div>
								<div class="entry value-plus1 active">&nbsp;</div> -->
							</div>
						</div>
						<!--quantity-->
								<script>
								$('.value-plus1').on('click', function(){
									var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)+1;
									divUpd.text(newVal);
								});

								$('.value-minus1').on('click', function(){
									var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)-1;
									if(newVal>=1) divUpd.text(newVal);
								});
								</script>
							<!--quantity-->

					</div>

				</div>

				<div class="simpleCart_shelfItem">
					<!-- <p>$450</p> -->
					<form action="#" method="post">
						<input type="hidden" name="cmd" value="_cart">
						<input type="hidden" name="add" value="1"> 
						<input type="hidden" name="w3ls_item" value="Smart Phone"> 
						<input type="hidden" name="amount" value="450.00">   
						<!-- <button type="submit" class="w3ls-cart">Add to cart</button> -->
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
						<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>TianRuan <span>TJ</span></li>
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