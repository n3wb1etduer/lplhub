<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, org.lanqiao.entity3.Product"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="bootstrap/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/bootstrap.js"></script>
<title>分页</title>
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

					<a href="index.jsp" style="border:none;height: 60px;width: 80px;color: black;"><i class="fa fa-sign-out" style="font-size: 200%;color: black;"></i><br />退出登录</a>
				</div>

				<div class="w3l_logo" style="">
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
				<!-- 商品展示 -->
				<div class="row">
			
					<%
						List<Product> list = (List<Product>) request.getSession().getAttribute("pageList");
						for (Product p : list) {
					%>
					<div class="col-md-4">
						<div class="thumbnail">
							<img alt="不显示提示" src="<%=p.getCOVER()%>" style="width:300px;height:400px;"/>
						<div class="video" style="height:320px;">
								<p style="font-size:calc(1000%)"><strong>电影名:</strong><style="font-size:calc(90%)"><%=p.getTITLE()%></style></p><br/>
								<p style="font-size:calc(700%); color:gray;">导演:<%=p.getMAJOR()%></p><br/>
								<p style="font-size:calc(700%); color:gray;">上映日期:<%=p.getYEAR()%></p><br/>
								<h4><strong>影片价格:</strong><%=p.getPRICE()%></h4><br/>
								<p>
									<a class="btn btn-primary" href="AddCartServlet?RANK=<%=p.getRANK() %>">购买视频</a> <a class="btn"
										href="http://localhost:8099/Cart/single.jsp?RANK=<%=p.getRANK() %> ">商品详情</a>
								</p>
							</div>
						</div>
					</div>
					<%
						}
					%>

				</div>
			</div>

			<!-- 分页组件 -->
			<div class="col-md-12 column">
				<ul class="pagination" >

					<c:if test="${param.page > 1 }">
						<li><a
							href="http://localhost:8099/Cart/PageServlet?page=${param.page-1 }">Prev</a>
						</li>
					</c:if>

					<c:forEach begin="1" end="${pageCount }" var="page">
						<li><a href="${pageContext.request.contextPath }/PageServlet?page=${page}">${page }</a></li>
					</c:forEach>

					<c:if test="${param.page<pageCount }">
						<li><a href="http://localhost:8099/Cart/PageServlet?page=${param.page+1 }">Next</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>