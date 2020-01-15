<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, org.lanqiao.entity3.Product"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
	<html>

	<head>
		<meta charset="UTF-8">
		<title>商城管理员</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="bootstrap/bootstrap.min.css" rel="stylesheet">
		<script type="text/javascript" src="bootstrap/jquery.min.js"></script>
		<script type="text/javascript" src="bootstrap/bootstrap.js"></script>
		<meta name="keywords" content="" />
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>

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
		<!-- header modal -->

		<div class="header" id="home1">
			<div class="container">

				<div class="w3l_logo" >
					<img src="images/logo.png" style="margin:0px 50px"/>
					<h1 style="margin:0px 50px"><a href="index.html">Know you.For you.</span></a></h1>
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
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs" >
						<ul class="nav navbar-nav">
	
							<!-- Mega Menu -->
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">会员管理 <b class="caret"></b></a>
								<!-- <ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
												<li>
													<a href="about.html">查看会员详情</a>
												</li>
											</ul>
										</div>
									</div>
								</ul> -->
							</li>

							<li>
								<a href="http://localhost:8099/Cart/page3_index.jsp">商品管理</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>

		<div class="breadcrumb_dress">
			<div class="container">
				<ul>
					<li>
						<a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
					<!--转到首页-->
					<li>商城管理</li>
				</ul>
			</div>
		</div>
		<div style="text-align: center; margin: 20px; border: 0;" >
			<h1>添加会员</h1>
		</div>

		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
				<!-- 	<form class="form-horizontal" role="form"> -->
					<form class="form-horizontal" role="form"  action = "http://localhost:8099/Cart/ManagerAddServlet"  method="post">
						
					<div class="form-group">	
					
                      <label for="inputPassword3" class="col-sm-2 control-label"> Email Address/Phone/QQ/*</label>
						<div class="col-sm-10">
                        <input type="text" class="form-control" name="email">
                    	</div>
                    </div>
                    	
                    	
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword3" name="password" />
							</div>
						</div>
						
						
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">添加</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<form class="form-horizontal" role="form"  action = "http://localhost:8099/Cart/ManageDelservlet"  method="post">
		<div style="text-align: center; margin: 20px; border: 0;" >
			<h1>删除会员</h1>
		</div>

		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<form class="form-horizontal" role="form">
						<div class="form-group">	
						
						<label for="inputPassword3" class="col-sm-2 control-label">Email Address/Phone/QQ/*</label>
						<div class="col-sm-10">
                        <input type="text" class="form-control" name="email">
                    	</div>
                    </div>
						
						
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">删除</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		</form>

	</body>

	</html>