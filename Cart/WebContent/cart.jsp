<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="bootstrap/bootstrap.min.css"/>
<script type="text/javascript" src="bootstrap/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/bootstrap.js"></script>


<title>购物车</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
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
		<link rel="stylesheet" href="css/jquery.countdown.css" />
		<!-- countdown -->
		<!-- //js -->
		<!-- web fonts -->
		<link href='http://fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
		<!-- //web fonts -->
		<!-- start-smooth-scrolling -->
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({
						scrollTop: $(this.hash).offset().top
					}, 1000);
				});
			});
		</script>
</head>
<body>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>

		<div class="header" id="home1">
			<div class="container">
				<div class="w3l_login" style="
				margin: 20px -10px;
				text-shadow: 4px 4px 8px darkgray;
				font-size: 120%;">
					<!--<a href="login.html" data-toggle="modal" data-target="#myModal88"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>-->

					<a href="http://localhost:8099/Cart/login.jsp" style="border:none;height: 60px;width: 80px;color: black;"><i class="fa fa-sign-in" style="font-size: 200%;"></i><br />跳转登录</a>
					<!--登录跳转-->
				</div>
				<div class="w3l_login" style="
				margin: 20px 40px;
				text-shadow: 4px 4px 8px darkgray;
				font-size: 120%;">

					<a href="index.jsp" style="border:none;height: 60px;width: 80px;color: black;"><i class="fa fa-sign-out" style="font-size: 200%;"></i><br />退出登录</a>
				</div>
				<div class="w3l_logo">
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
							<li>
								<a href="index.html" class="act">Home</a>
							</li>
							<!-- Mega Menu -->
							<li class="dropdown">
								<a href="http://localhost:8099/Cart/index2.jsp" class="dropdown-toggle" data-toggle="">Products <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">

								</ul>
							</li>
							<li>
								<a href="cart.jsp">cart</a>
							</li>
							<li>
								<a href="order.jsp">order</a>
							</li>
							<li>
								<a href="mail.html">Mail Us</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table" >
				<thead>
					<tr>
						<th>
							编号
						</th>
						<th>
							电影名
						</th>
						<th>
							海报	
						</th>
						<th>
							单价
						</th>
						<th>
						       购买数量
						</th>
						<th>
							总价	
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
					<!-- 遍历数据 -->
					<c:forEach items="${cart }"  var="product"  varStatus="i">
						<tr class="success">
						<td>
							${i.count }
						</td>
						<td>
							${product.key.TITLE }
						</td>
						<td>
							<img alt="今天不方便哦" style="width:100px;height:70px;" src="${product.key. COVER}" />
						</td>
						<td>
							${product.key.PRICE }
						</td>
						<td style="width:180px">
							<input type="button" value="-"  onclick="location.href='UpdateCartServlet?RANK=${product.key.RANK}&status=0'"/>
							<input type="text" value="${product.value }" size="3"/>
							<input type="button" value="+" onclick="location.href='UpdateCartServlet?RANK=${product.key.RANK}&status=1'"/>
						</td>
						<td>
							${product.key.PRICE * product.value }
						</td>
						<td>
							<input type="button", value="delete" onclick="location.href='DeleteCartServlet?RANK=${product.key.RANK}'" />
						</td>
					
					</tr>
					</c:forEach>
					
					<tr class="warning">
						<td colspan="6">
							<div>
								总价:<input type="text" value="${totalPrice }"/>RMB
							</div>
						</td>
						<td>
							<input type="button"  value="结算"  onclick="location.href='order.jsp'" />
						</td>
					</tr>
					
				</tbody>
			</table>
		</div>
	</div>
</div>

</body>
</html>