<%@page import="com.shiva.entity.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
	Student student = (Student) request.getAttribute("student");
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
    <link rel="icon" type="image/png" sizes="16x16" href="resources/img/favicon.ico">
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
			<div class="navbar-collapse collapse"></div>

		</div>
	</div>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Student Information</div>
			<div class="panel-body">
				<div class="container">
					<div class="col-md-8">
						<form action="" id="" method="" class="form-horizontal">
							<div class="form-group">
								<label class="col-sm-3 control-label">Admission Number</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="rollNo"
										name="Roll Number" value="<%=student.getAdmissionNo()%>"
										readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Full name</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="studentFirstName"
										name="studentFirstName"
										value="<%=student.getStudentFirstName()%> <%=student.getStudentLastName()%>"
										readonly="readonly" />
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-3 control-label">Father Name</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="studentFatherName"
										name="studentFatherName" placeholder="Father Name"
										value="<%=student.getStudentFatherName()%>"
										readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Mother Name</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="studentMotherName"
										name="studentMotherName" placeholder="Mother name"
										value="<%=student.getStudentMotherName()%>"
										readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Gender</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="gender"
										name="gender" value="<%=student.getGender()%>"
										readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label">Date Of Birth</label>
								<div class="col-xs-5 date">
									<input type="text" class="form-control" name="studentDob"
										value="<%=student.getDob()%>" readonly="readonly" />

								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Class</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" name="class"
										value="<%=student.getStudentClass()%>" readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Medium</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" name="medium"
										value="<%=student.getMedium()%>" readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Section</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" name="section"
										value="<%=student.getSection()%>" readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Religion</label>
								<div class="col-sm-5">
									<input id="religion" name="religion" class="form-control"
										type="text" value="<%=student.getReligion()%>"
										readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Caste</label>
								<div class="col-sm-5">
									<input id="caste" name="caste" class="form-control" type="text"
										value="<%=student.getCaste()%>" readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Mobile No</label>
								<div class="col-sm-5">
									<input id="mobileNo" name="mobileNo"
										value="<%=student.getPhoneNumber()%>" class="form-control"
										type="number" readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Address</label>
								<div class="col-sm-5">
									<textarea class=" input-xlarge form-control" id="village"
										name="village" rows="3" readonly="readonly"><%=student.getVillage()%></textarea>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Fee Pay</label>
								<div class="col-sm-5">
									<input id="fee" class="form-control" name="fee" type="text"
										value="<%=student.getFees()%>" readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label">Date Of Joinee</label>
								<div class="col-xs-5 date">
									<input type="text" class="form-control" name="studentDoj"
										value="<%=student.getDoj()%>" readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
									<div class="col-sm-9 col-sm-offset-3">
							<a href="student.do" class="btn btn-default">Back</a>
							<button type="submit" class="btn btn-primary" name="print"
								onClick="window.print()" value="Print">Print</button>
</div></div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Footer and Modal
    ==========================-->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<hr />
				<p>
					Copyright &copy; Sri Narayana Olypiad School. <a
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
