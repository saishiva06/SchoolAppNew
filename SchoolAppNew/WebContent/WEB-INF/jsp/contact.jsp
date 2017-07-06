<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	 pageEncoding="ISO-8859-1"%>
<%
	String successMsg = (String) request.getAttribute("Msg");
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<title>:: Contact</title>
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
<script src="https://maps.googleapis.com/maps/api/js"></script>
<script>
	function initialize() {
		var mapCanvas = document.getElementById('map123');
		var mapOptions = {
			center : new google.maps.LatLng(17.227546, 80.150414),
			zoom : 8,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		}
		var map = new google.maps.Map(mapCanvas, mapOptions)
	}
	google.maps.event.addDomListener(window, 'load', initialize);
</script>
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
						<li class="nav-item"><a href="news.do">News</a></li>
						<li class="nav-item active"><a href="contact.do">Contact</a></li>
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
					<h1 class="heading-title pull-left">Contact</h1>
					<div class="breadcrumbs pull-right">
						<ul class="breadcrumbs-list">
							<li class="breadcrumbs-label">You are here:</li>
							<li><a href="index.do">Home</a><i class="fa fa-angle-right"></i></li>
							<li class="current">Contact</li>
						</ul>
					</div>
					<!--//breadcrumbs-->
				</header>
				<% if (successMsg != null && successMsg.length()!=0) { %>
	<h3><span style="margin:auto; display:table; color: red"><%= successMsg %></span></h3>
	<%} %>
				<div class="page-content">
					<div class="row">
						<article class="contact-form col-md-8 col-sm-7  page-row">
							<h3 class="title">Get in touch</h3>
							<p>We would love to hear from you. Please fill Your comments
								and feedback here.</p>
							<form action="addComplaint.do" id="addComplaint" method="post"
								name="myform" class="form-horizontal">
								<div class="form-group name">
									<label for="name">Name</label> <input id="name" type="text"  name="name"
										class="form-control" placeholder="Enter your name" required="required" >
								</div>
								<!--//form-group-->
								<div class="form-group email">
									<label for="email">Email<span class="required">*</span></label>
									<input id="email" type="email" class="form-control" name="perEmail"
										placeholder="Enter your email" required="required" >
								</div>
								<!--//form-group-->
								<div class="form-group phone">
									<label for="phone">Phone</label> <input id="phone" type="tel" name="perPhone" 
										class="form-control" placeholder="Enter your contact number" required="required" >
								</div>
								<!--//form-group-->
								<div class="form-group message">
									<label for="message">Message<span class="required">*</span></label>
									<textarea id="message" class="form-control" rows="6" name = "message"
										placeholder="Enter your message here..." required="required" ></textarea>
								</div>
								<!--//form-group-->
								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-3">
										<button type="submit" class="btn btn-primary" name="signup"
											value="Sign up">Submit</button>
											<button type="reset" class="btn btn-primary" name="reset"
											value="RESET">Clear</button>
									</div>
								</div>
							</form>
						</article>
						<!--//contact-form-->
						<aside
							class="page-sidebar  col-md-3 col-md-offset-1 col-sm-4 col-sm-offset-1">
							<section class="widget has-divider">
								<h3 class="title">Postal Address</h3>
								<p class="adr">
									<span class="adr-group"> <span><b>Sri
												Narayana Olympiad Schools</b></span><br> <span
										class="street-address">Near Beraca Church</span><br> <span
										class="region">Mustafa Nagar Khammam(District)</span><br>
										<span class="postal-code">Telangana-507001</span><br> <span
										class="country-name">India</span>

									</span>
								</p>
							</section>
							<!--//widget-->

							<section class="widget">
								<h3 class="title">All Enquiries</h3>
								<p class="tel">
									<i class="fa fa-phone"></i>9666644801 (or) 8686172057 (or)  08742-231234
								</p>
								<p class="email">
									<i class="fa fa-envelope"></i> <a href="#">srinarayanaolympiadschools@gmail.com</a>
								</p>
							</section>
						</aside>
						<!--//page-sidebar-->
					</div>
					<!--//page-row-->
					<div class="page-row">
						<article class="map-section">
							<h3 class="title">How to find us</h3>
							<div id="map123"></div>
							<!--//map-->
						</article>
						<!--//map-->
					</div>
					<!--//page-row-->
				</div>
				<!--//page-content-->
			</div>
			<!--//page-wrapper-->
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

