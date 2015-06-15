<%@page import="com.shiva.entity.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
    String maleChecked ="", femaleChecked = "";
	Student student = (Student) request.getAttribute("student");
	if(student.getGender()!=null && student.getGender().length()!=0) {
	if(student.getGender().equalsIgnoreCase("male")) {
	 maleChecked  = "checked = 'checked'";
	} else {
	 femaleChecked  = "checked = 'checked'";
	}
	}
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
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/img/favicon.ico">
<link type="text/css" rel="stylesheet"
	href="resources/css/datepicker.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/datepicker3.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/formValidation.css" />
</head>
<body>

	<div class="wrapper">
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
					<li class="nav-item active"><a href="#">Student</a></li>
					<li class="nav-item"><a href="feeDetails.do">Fee</a></li>
					<li class="nav-item"><a href="examResults.do">Examination</a></li>
					<li class="nav-item"><a href="budgetDashboard.do">Budget</a></li>

				</ul>
				<!--//nav-->

			</div>
			<!--//navabr-collapse-->
		</div>
		<!--//container-->
	</nav>
	<!--//main-nav-->
	<div class="container">
		<p>
			<b> <a href="student.do" class="btn btn-default">Back</a></b>
		</p>
	</div>

	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Student Update</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
							<form action="updateStudent.do" id="updateStudent" method="post"
								class="form-horizontal">
								<input type="hidden" name="rollno"
									value="<%=student.getRollno()%>"> <input type="hidden"
									name="admissionNo" value="<%=student.getAdmissionNo()%>">
								<div class="form-group">
									<label class="col-sm-3 control-label">Full name</label>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="studentFirstName"
											name="studentFirstName" placeholder="First name"
											value="<%=student.getStudentFirstName()%>" />
									</div>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="studentLastName"
											name="studentLastName" placeholder="Last name"
											value="<%=student.getStudentLastName()%>" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Father Name</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="studentFatherName"
											name="studentFatherName" placeholder="Father Name"
											value="<%=student.getStudentFatherName()%>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Mother Name</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="studentMotherName"
											name="studentMotherName" placeholder="Mother name"
											value="<%=student.getStudentMotherName()%>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Gender</label>
									<div class="col-sm-6">
										<div class="radio">
											<label><input type="radio" name="gender"
												value = "male"  <%=maleChecked%> />Male
						</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="gender"
												value = "female"  <%=femaleChecked%> /> Female
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-xs-3 control-label">Date Of Birth</label>
									<div class="col-xs-5 date">
										<div class="input-group input-append date" id="StudentDOB">
											<input type="text" class="form-control" name="studentDob"
												value="<%=student.getDob()%>" /> <span
												class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Class</label>
									<div class="col-sm-5">
										<select name="studentClass" class="form-control">
											<option value="<%=student.getStudentClass()%>"
												selected="selected"><%=student.getStudentClass()%></option>
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
									<label class="col-sm-3 control-label">Medium</label>
									<div class="col-sm-5">
										<select name="medium" class="form-control">
											<option value="<%=student.getMedium()%>" selected="selected"><%=student.getMedium()%></option>
											<option value="English">English</option>
											<option value="Telugu">Telugu</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Section</label>
									<div class="col-sm-5">
										<select name="section" class="form-control">
											<option value="<%=student.getSection()%>" selected="selected"><%=student.getSection()%></option>
											<option value="A">A</option>
											<option value="B">B</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Religion</label>
									<div class="col-sm-5">
										<input id="religion" name="religion" class="form-control"
											type="text" value="<%=student.getReligion()%>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Caste</label>
									<div class="col-sm-5">
										<input id="caste" name="caste" class="form-control"
											type="text" value="<%=student.getCaste()%>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Mobile No</label>
									<div class="col-sm-5">
										<input id="mobileNo" name="mobileNo"
											value="<%=student.getPhoneNumber()%>" class="form-control"
											type="number" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Address</label>
									<div class="col-sm-5">
										<textarea class=" input-xlarge form-control" id="village"
											name="village" rows="3"><%=student.getVillage()%></textarea>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Fee Pay</label>
									<div class="col-sm-5">
										<input id="fee" class="form-control" name="fee" type="text"
											value="<%=student.getFees()%>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-xs-3 control-label">Date Of Joinee</label>
									<div class="col-xs-5 date">
										<div class="input-group input-append date" id="StudentDOJ">
											<input type="text" class="form-control" name="studentDoj"
												value="<%=student.getDoj()%>"/> <span
												class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-3">
										<button type="submit" class="btn btn-primary" name="signup"
											value="Update">Update</button>
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
