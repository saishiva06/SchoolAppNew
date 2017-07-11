<%@page import="com.shiva.entity.Teacher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
   String maleChecked ="", femaleChecked = "";
	Teacher teacher = (Teacher) request.getAttribute("teacher");
	if(teacher.getGender()!=null && teacher.getGender().length()!=0) {
	if(teacher.getGender().equalsIgnoreCase("male")) {
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

	<jsp:include page="header.jsp" />
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
											name="firstName" value="<%=teacher.getFirstName()%>" />
									</div>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="lastName"
											name="lastName" value="<%=teacher.getLastName()%>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Professional Qualification</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="profQualification"
											name="profQualification" value="<%=teacher.getProfQualification()%>" />
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
										<div class="input-group input-append date" id="TeacherDOB">
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
									<label class="col-sm-3 control-label">Sub Caste</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="subCaste"
											name="subCaste" value="<%=teacher.getSubCaste()%>" />
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
												value="male" <%=maleChecked%>/> Male
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="gender"
												value="female" <%=femaleChecked%>/> Female
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-xs-3 control-label">Date Of Joinee</label>
									<div class="col-xs-5 date">
										<div class="input-group input-append date" id="TeacherDOJ">
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

