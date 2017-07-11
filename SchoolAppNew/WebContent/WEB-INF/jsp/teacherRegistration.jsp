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

							<form action="addTeacher.do" id="addTeacher" method="post"
								class="form-horizontal">
								<div class="form-group">
									<label class="col-sm-3 control-label">Full name</label>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="firstName"
											name="firstName" placeholder="First name" />
									</div>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="lastName"
											name="lastName" placeholder="Last name" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Professional Qualification</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="profQualification"
											name="profQualification" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Acadamic Qualification</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="qualification"
											name="qualification" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Teaching Subject</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="subject"
											name="subject" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Experience</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="experince"
											name="experience" placeholder="2.5" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-xs-3 control-label">Date Of Birth</label>
									<div class="col-xs-5 date">
										<div class="input-group input-append date" id="TeacherDOB">
											<input type="text" class="form-control tDob" name="dob" 
												placeholder="01/01/2000" /> <span
												class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Caste</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="caste"
											name="caste" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Sub Caste</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="subCaste"
											name="subCaste" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Mobile No</label>
									<div class="col-sm-5">
										<input id="mobileNo" name="mobileNo" class="form-control"
											type="number" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Address</label>
									<div class="col-sm-5">
										<textarea class=" input-xlarge form-control" id="village"
											name="village" rows="3"></textarea>
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
										<div class="input-group input-append date" id="TeacherDOJ">
											<input type="text" class="form-control tDoj" name="doj"
												placeholder="DD/MM/YYYY" /> <span
												class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>
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
