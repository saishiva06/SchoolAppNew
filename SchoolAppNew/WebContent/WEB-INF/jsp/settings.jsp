<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>
<%
	String successMsg = (String) request.getAttribute("Msg");
%>
<!DOCTYPE html>
<html>
<head>
<title>Sri Narayana Olympiad School</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/font-awesome.css">
<link type="text/css" rel="stylesheet" href="resources/css/style.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/datepicker.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/datepicker3.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/formValidation.css" />
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/img/favicon.ico">


</head>
<body>
	<div class="wrapper">
		<header class="header">
			<div class="header-main container">
				<h1 class="logo col-md-4 col-sm-4">
					<a href="dashboard.do"><img id="logo"
						class="img-responsive img-inblock" src="assets/images/logo.png"
						alt="Logo"></a>
				</h1>
				<!--//logo-->



				<div class="info col-md-8 col-sm-8 marginTop30">
					<div class="col-md-12 col-sm-12  text-center">
						<ul class="menu-top ">
							<li class="divider"><a href="dashboard.do">Dashboard</a></li>
							<li><a href="logout.do">&nbsp Logout<i
									class="fa fa-power-off fa-lg"></i></a></li>
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
	</div>
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
					<li class="nav-item"><a href="dashboard.do">Dashboard</a></li>
					<li class="nav-item"><a href="teacher.do">Teacher</a></li>
					<li class="nav-item"><a href="student.do">Student</a></li>
					<li class="nav-item"><a href="feeDetails.do">Fee</a></li>
					<li class="nav-item"><a href="examResults.do">Examination</a></li>
					<li class="nav-item"><a href="budgetDashboard.do">Budget</a></li>
					<li class="nav-item dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown" data-delay="0"
							data-close-others="false" href="#">Settings <i
								class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="settings.do" class="btn btn-primary">Change Password</a></li>
								<li><a href="newsDynamic.do" class="btn btn-primary">Add News</a></li>
							    </ul>
                </ul>
				<!--//nav-->
				<!--  <ul class="nav navbar-nav navbar-right">
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="logout.do">Logout</a></li>
                      </ul> -->

			</div>
			<!--//navabr-collapse-->
		</div>
		<!--//container-->
	</nav>
	<!--//main-nav-->
	<div class="container">
		<p>
			<b> <a href="dashboard.do" class="btn btn-default">Back</a></b>
		</p>
	</div>
	
	<% if (successMsg != null && successMsg.length()!=0) { %>
	<h1><span style="margin:auto; display:table; color: red"><%= successMsg %></span></h1>
	<%} %>
	
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Change Password</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
							<form action="changePassword.do" id="changePassword" method="post"
								class="form-horizontal">
								<div class="form-group">
									<label class="col-sm-3 control-label">Old Password*</label>
									<div class="col-sm-5">
										<input type="password" class="form-control" id="oldPassword"
											name="oldPassword"  placeholder="******"
											required="required" />
									</div>
									</div>
									<div class="form-group">
									<label class="col-sm-3 control-label">New Password*</label>
								   <div class="col-sm-5">
										<input type="password" class="form-control" id="newPassword"
											name="newPassword" placeholder="*****"
											required="required" />
									</div>
									</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Re Enter New Password*</label>
								   <div class="col-sm-5">
										<input type="password" class="form-control" id="newPassword1"
											name="newPassword1" placeholder="******"
											required="required" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-3">
										<button type="submit" class="btn btn-primary" name="signup"
											value="Sign up">Submit</button>
											<button type="reset" class="btn btn-primary" name="reset"
											value="RESET">Clear</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
		
	<!-- Footer and Modal
    ==========================-->
	<footer id="footer-sec" class="footer">
		<div class="bottom-bar">
			<div class="container">
				<div class="row">
					<a class="copyright col-md-12 col-sm-12 col-xs-12"> Sri
						Narayana Olympiad Schools © 2015 All rights reserved. </a>
				</div>
			</div>
		</div>
	</footer>

	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.js"></script>
	<script src="resources/js/dataTables/jquery.dataTables.js"></script>
	<script src="resources/js/dataTables/dataTables.bootstrap.js"></script>
	<script src="resources/js/bootstrap-datepicker.min.js"></script>
	<script src="resources/js/formValidation.js"></script>
	<script src="resources/js/framework/bootstrap.js"></script>
	<script src="resources/js/schoolscript.js"></script>
	

</body>
</html>

