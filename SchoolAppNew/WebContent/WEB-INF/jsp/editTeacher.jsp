<%@page import="com.shiva.entity.Teacher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
	Teacher teacher = (Teacher) request.getAttribute("teacher");
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
</head>
<body>

	<!-- Fixes Navigation Bar with drop down menu
    ======================================================-->
	<div class="navbar navbar-inner ">
		<div class="container">
			<div class="navbar-header">
				<button type="buttton" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand"><img width="90px" height="80px"
					src="resources/img/logo.jpg" class="logo" alt="Logo"></img></a>
			</div>
			<div>
				<h2 class="well">SRI NARAYANA OLYMPIAD SCHOOL</h2>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="dashboard.do">Home</a></li>
					<li class="active"><a href="#">Teacher</a></li>
					<li><a href="student.do">Student</a></li>
					<li><a href="feeDetails.do">Fee</a></li>
					<li><a href="examResults.do">Examination</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="logout.do">Logout</a></li>
				</ul>
			</div>

		</div>
	</div>
	<div class="container">
		<p>
			<b> <a href="teacher.do" class="btn btn-default">Back</a></b>
		</p>
	</div>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Teacher New Registration</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-8">

							<form action="updateTeacher.do" id="updateTeacher" method="post"
								class="form-horizontal">
								<input type="hidden" name="teacher_id"
									value="<%=teacher.getTeacherId()%>">

								<div class="form-group">
									<label class="col-sm-3 control-label">Full name</label>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="firstName"
											name="firstName" value="<%=teacher.getFirstName()%>"/>
									</div>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="lastName"
											name="lastName" value="<%=teacher.getLastName()%>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Qualification</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="qualification"
											name="qualification" value="<%=teacher.getQualification()%>" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Teaching Subject</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="subject"
											name="subject" value="<%=teacher.getSubject()%>" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Experience</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="experince"
											name="experience" value="<%=teacher.getExp()%>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-xs-3 control-label">Date Of Birth</label>
									<div class="col-xs-5 date">
										<div class="input-group input-append date" id="datePicker">
											<input type="text" class="form-control" name="dob"
												value="<%=teacher.getDob()%>" /> <span
												class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Caste</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="caste"
											name="caste" value="<%=teacher.getCaste()%>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Mobile No</label>
									<div class="col-sm-5">
										<input id="mobileNo" name="mobileNo" class="form-control"
											type="number" value="<%=teacher.getPhoneNumber()%>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Address</label>
									<div class="col-sm-5">
										<textarea class=" input-xlarge form-control" id="village"
											name="village" rows="3"><%=teacher.getVillage()%></textarea>
									</div>
								</div>


								<div class="form-group">
									<label class="col-sm-3 control-label">Gender</label>
									<div class="col-sm-6">
										<div class="radio">
											<label> <input type="radio" name="gender"
												value="male" /> Male
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="gender"
												value="female" /> Female
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-xs-3 control-label">Date Of Joinee</label>
									<div class="col-xs-5 date">
										<div class="input-group input-append date" id="datePicker">
											<input type="text" class="form-control" name="doj"
												value="<%=teacher.getDoj()%>" /> <span
												class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>
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




	<%-- <fieldset>
		<h2 align="center">Teacher Registration:</h2>
		<form name="SchoolInfo" action="updateTeacher.do" method="post">
			<p align="center">Please Fill the following details to submit
				Teacher details.</p>
			<p align="left">
				<a href="teacher.do"><input type="button" name="add"
					value="BACK"></input></a>
			</p>
			<input type="hidden" name="teacher_id" value="<%= teacher.getTeacherId()%>">
			<table>

				<tr>
					<td align="right"><label>First Name*: </label></td>
					<td><input id="firstName" name="firstName" type="text" value = "<%=teacher.getFirstName() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Last Name*: </label></td>
					<td><input id="lastName" name="lastName" type="text" value = "<%=teacher.getLastName() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Qualification*: </label></td>
					<td><input id="qualification" name="qualification" type="text" value = "<%=teacher.getQualification() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Teaching Subject*: </label></td>
					<td><input id="subject" name="subject" type="text" value = "<%=teacher.getSubject() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Experience*: </label></td>
					<td><input id="experince" name="experience" type="text" value = "<%=teacher.getExp() %>"/></td>
				</tr>

				<tr>
					<td align="right"><label>Date of birth*: </label></td>
					<td><input id="datepicker" name="dob" type="text" value = "<%=teacher.getDob() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Caste*: </label></td>
					<td><input id="caste" name="caste" type="text" value = "<%=teacher.getCaste() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Religion*: </label></td>
					<td><input id="religion" name="religion" type="text" value = "<%=teacher.getReligion() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Mobile Number*: </label></td>
					<td><input id="mobileNo" name="mobileNo" type="text" value = "<%=teacher.getPhoneNumber() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Village*: </label></td>
					<td><input id="village" name="village" type="text" value = "<%=teacher.getVillage() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Gender*: </label></td>
					<td><input id="gender" name="gender" type="text" value = "<%=teacher.getGender() %>"/></td>
				</tr>

				<tr>
					<td align="right"><input name="Update" type="submit"
						value="Update" /></td>
					<td><a href="teacher.do"><input name="cancel" type="button" value="Cancel" /></a></td>
				</tr>
			</table>
		</form>
		
	</fieldset> --%>



	<!-- Footer and Modal
    ==========================-->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<hr />
				<p>
					Copyright &copy; Sri Narayana Olympiad School. <a
						data-toggle="modal" href="#myModal">Terms and Conditions</a>
				</p>
			</div>
		</div>
	</div>

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

