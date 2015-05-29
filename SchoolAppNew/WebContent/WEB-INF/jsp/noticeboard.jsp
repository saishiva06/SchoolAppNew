<%@page import="com.shiva.entity.ExamResults"%>
<%@page import="com.shiva.util.Calculation"%>
<%@page import="com.shiva.util.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
	ExamResults examResults = (ExamResults) request
			.getAttribute("examResultsData");
	Calculation calculation = new Calculation();
%>

<!DOCTYPE html>
<html>
<head>
<title>SRI NARAYANA OLYPIAD SCHOOL</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap.css" />
<link type="text/css" href="resources/css/font-awesome.css"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="resources/css/style.css" />
<link href="resources/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/img/favicon.ico">
</head>
<body>
<body class="home-page">
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
							<li><a href="contact.do">Contact</a></li>
						</ul>
						<!--//menu-top-->
					</div>
					<div class="clearfix text-center"></div>
					<div class="contact col-md-12 col-sm-12">
						<div class=" pull-right">
							<p class="phone">
								<i class="fa fa-phone"></i>Call us | +91 - 9666644801 | +91 -
								8686172057
							</p>
							<p class="email">
								<i class="fa fa-envelope"></i><a href="#">narayanaolympiadschools@gmail.com</a>
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
						<li class="nav-item"><a href="contact.do">Contact</a></li>
						<li class="nav-item active "><a href="noticeboard.do">Results</a></li>
					</ul>
					<!--//nav-->
				</div>
				<!--//navabr-collapse-->
			</div>
			<!--//container-->
		</nav>
		<!--//main-nav-->
	</div>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Student Marks</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
							<form action="noticeboard.do" id="noticeboard" method="post"
								class="form-horizontal">
								<div class="form-group">
									<label class="col-sm-3 control-label">Student Roll
										Number*</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="rollno"
											name="rollno" placeholder="Student Roll Number"
											required="required" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Class</label>
									<div class="col-sm-5">
										<select name="StudentClass" class="form-control"
											required="required" >
											<option value="">choose one</option>
											<option value="lkg">lkg</option>
											<option value="ukg">ukg</option>
											<option value="1st class">1st class</option>
											<option value="2nd class">2nd class</option>
											<option value="3rd class">3rd class</option>
											<option value="4th class">4th class</option>
											<option value="5th class">5th class</option>
											<option value="6th class">6th class</option>
											<option value="7th class">7th class</option>
											<option value="8th class">8th class</option>
											<option value="9th class">9th class</option>
											<option value="SSC">SSC</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-3">
										<button type="submit" class="btn btn-primary" name="signup"
											value="Sign up">Submit</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
		if (examResults != null) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<div class="panel panel-default">
					<div class="panel-heading">Results</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover">
								<tbody>
									<tr>
										<th>Student Name</th>
										<th><%=examResults.getStudentName()%></th>
										<th>Student Class</th>
										<th><%=examResults.getStudentClass()%></th>
									</tr>
									<tr>
										<td>Exam Title</td>
										<td><%=examResults.getExamTitle()%></td>
										<td>Exam Date</td>
										<td><%=examResults.getExamDate()%></td>
									</tr>
									<tr>
										<td>Telugu</td>
										<td><%=examResults.getTelugu1()%></td>
										<td>Hindi</td>
										<td><%=examResults.getHindi1()%></td>
									</tr>
									<tr>
										<td>English</td>
										<td><%=examResults.getEnglish1()%></td>
										<td>Maths</td>
										<td><%=examResults.getMaths1()%></td>
									</tr>
									<tr>
										<td>Science</td>
										<td><%=examResults.getScience1()%></td>
										<td>Social</td>
										<td><%=examResults.getSocial1()%></td>
									</tr>
									<tr>
										<td>Scored Marks</td>
										<td><%=examResults.getOthers()%></td>
										<td>Total Marks</td>
										<td><%=examResults.getTotal()%></td>
									</tr>
									<tr>
										<td>Grade</td>
										<td><%=examResults.getGrade()%></td>
										<td>Rank</td>
										<td><%=examResults.getRank()%></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<%
		}
	%>
	<!-- ******FOOTER****** -->

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
	<script src="resources/js/schoolscript.js"></script>
</body>
</html>
