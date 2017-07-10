<%@page import="com.shiva.entity.News"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>
<%

	List<News> mydata = (List<News>) request
			.getAttribute("newsData");
	

%><!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<title>:: News-single</title>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="favicon.ico">
<link href='../../fonts.googleapis.com/css/index.do' rel='stylesheet'
	type='text/css'>
<!-- Global CSS -->
<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Plugins CSS -->
<link rel="stylesheet"
	href="assets/plugins/font-awesome/css/font-awesome.css">
<link rel="stylesheet" href="assets/plugins/flexslider/flexslider.css">
<link rel="stylesheet"
	href="assets/plugins/pretty-photo/css/prettyPhoto.css">
<!-- Theme CSS -->
<link id="theme-style" rel="stylesheet" href="assets/css/styles.css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div class="wrapper">
		<!-- ******HEADER****** -->
		<header class="header">
			<div class="header-main container">
				<h1 class="logo col-md-4 col-sm-4">
					<a href="index.do"><img id="logo"
						class="img-responsive img-inblock" src="assets/images/logo.png"
						alt="Logo"></a>
				</h1>
				<!--//logo-->

				<div class="info col-md-8 col-sm-8 marginTop30">
					<div class="col-md-12 col-sm-12  text-center">
						<ul class="menu-top ">
							<li class="divider"><a href="index.do">Home</a></li>
							<li class="divider"><a href="admin.do">Admin Login</a></li>
							</ul>
						<!--//menu-top-->
					</div>
					<div class="clearfix text-center"></div>
					<div class="contact col-md-12 col-sm-12">
						<div class=" pull-right">
							<p class="phone">
								<i class="fa fa-phone"></i>Call us | 08742-231234 | +91-9666644801 | +91-8686172057
							</p>
							<p class="email">
								<i class="fa fa-envelope"></i><a href="#">srinarayanaolympiadschools@gmail.com</a>
							</p>
						</div>
					</div>
					<!--//contact-->
				</div>
				<!--//info-->

			</div>
			<!--//header-main-->
		</header>
		<!--//header-->

		<!-- ******NAV****** -->
		<nav class="main-nav" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button class="navbar-toggle" type="button" data-toggle="collapse"
						data-target="#navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!--//nav-toggle-->
				</div>
				<!--//navbar-header-->
				<div class="navbar-collapse collapse" id="navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="nav-item"><a href="index.do">Home</a></li>
						<li class="nav-item dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown" data-delay="0"
							data-close-others="false" href="#">About Us <i
								class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="about.do">About</a></li>
								<li><a href="team.do">Our Staff</a></li>
								<li><a href="gallery.do">School Gallery</a></li>
							</ul></li>
						<li class="nav-item active"><a href="news.do">News</a></li>
						<li class="nav-item"><a href="contact.do">Contact</a></li>
						<li class="nav-item"><a href="noticeboard.do">Results</a></li>
					</ul>
					<!--//nav-->
				</div>
				<!--//navabr-collapse-->
			</div>
			<!--//container-->
		</nav>
		<!--//main-nav-->

		<!-- ******CONTENT****** -->
		<div class="content container">
			<div class="page-wrapper">
				<header class="page-heading clearfix">
					<h1 class="heading-title pull-left">Latest News</h1>
					<div class="breadcrumbs pull-right">
						<ul class="breadcrumbs-list">
							<li class="breadcrumbs-label">You are here:</li>
							<li><a href="index.do">Home</a><i class="fa fa-angle-right"></i></li>
							<li><a href="index.do">News</a><i class="fa fa-angle-right"></i></li>
							<li class="current">News one</li>
						</ul>
					</div>
					<!--//breadcrumbs-->
				</header>
				<div class="page-content">
					<div class="row page-row">
						<div class="news-wrapper col-md-8">
							<article class="news-item">
								<p class="meta text-muted">Posted on: July 2017</p>
								<p class="featured-image">
									<img class="img-responsive" src="assets/images/news/news-1.jpg"
										alt="" />
								</p>
							<%
													if (mydata != null && mydata.size() > 0) {
														for (int i = 0; i < mydata.size(); i++) {
															News news = mydata.get(i);
												%>
							
							
								<p>
<h4><b><%=news.getNewsHeadLine()%>:</b></h4>
<h6><b>Date:</b><%=news.getNewsDate()%></h6>
<h6><%=news.getNewsDesc()%></h6><br>
<%
}
}
%>
</p>

							</article>
							<!--//news-item-->
						</div>
						<!--//news-wrapper-->

					</div>
					<!--//page-row-->
				</div>
				<!--//page-content-->
			</div>
			<!--//page-->
		</div>
		<!--//content-->
	</div>
	<!--//wrapper-->

	<!-- ******FOOTER****** -->

	<footer id="footer-sec" class="footer">
		<div class="bottom-bar">
			<div class="container">
				<div class="row">
					<a class="copyright col-md-12 col-sm-12 col-xs-12"> Narayana
						Olympiad Schools © 2015 All rights reserved. </a>
				</div>
			</div>
		</div>
	</footer>



	<!-- Javascript -->
	<script type="text/javascript"
		SRC="assets/plugins/jquery-1.10.2.min.js"></script>
	<script type="text/javascript"
		SRC="assets/plugins/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript"
		SRC="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		SRC="assets/plugins/bootstrap-hover-dropdown.min.js"></script>
	<script type="text/javascript" SRC="assets/plugins/back-to-top.js"></script>
	<script type="text/javascript"
		SRC="assets/plugins/jquery-placeholder/jquery.placeholder.js"></script>
	<script type="text/javascript"
		SRC="assets/plugins/pretty-photo/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript"
		SRC="assets/plugins/flexslider/jquery.flexslider-min.js"></script>
	<script type="text/javascript" SRC="assets/js/main.js"></script>


</body>
</html>