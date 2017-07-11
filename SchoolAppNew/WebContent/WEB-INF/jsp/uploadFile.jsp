<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

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
	<jsp:include page="header.jsp" />
	<div class="container">
		<p>
			<b> <a href="feeDetails.do" class="btn btn-default">Back</a></b>
		</p>
	</div>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Fee New Registration</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
                          <form action="uploadFileProcess.do" id="uploadFileForm" method="post"
								class="form-horizontal" enctype="multipart/form-data" >
								
								
								<div class="form-group">
									<label class="col-sm-3 control-label">Class</label>
									<div class="col-sm-5">
										<select name="studentClass" class="form-control" required = "required">
											<option value="">choose one</option>
											<option value="Nursery">Nursery</option>
											<option value="LKG">Lkg</option>
											<option value="UKG">Ukg</option>
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
									<label class="col-sm-3 control-label">Exam Title </label>
									<div class="col-sm-5">
										<select name="examTitle" class="form-control"
											required="required" >
											<option value="">choose one</option>
											<option value="FA1">FA1</option>
											<option value="FA2">FA2</option>
											<option value="FA3">FA3</option>
											<option value="FA4">FA4</option>
											<option value="Quarterly Exams">Quarterly Exams</option>
											<option value="Half yearly Exams">Half yearly Exams</option>
											<option value="Pre Final Exams">Pre Final Exams</option>
											<option value="Final Exams">Final Exams</option>
											<option value="Other">Other</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Subject </label>
									<div class="col-sm-5">
										<select name="subject" class="form-control"
											required="required" >
											<option value="">choose one</option>
											<option value="telugu_1">Telugu</option>
											<option value="hindi_1">Hindi</option>
											<option value="english_1">English</option>
											<option value="maths_1">Maths</option>
											<option value="science_1">Physical Science</option>
											<option value="science_2">Biology Science</option>
											<option value="social_1">Social</option>
											<option value="arts">General Knowledge</option>
											<option value="science_1">EVS</option>
											<option value="computers">Computers</option>
											<option value="other">Other</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-xs-3 control-label">Exam Start Date</label>
									<div class="col-xs-5 date">
										<div class="input-group input-append date" id="uploadDatePicker">
											<input type="text" class="form-control UDoe" name="uploadDate"
												placeholder="DD/MM/YYYY" /> <span
												class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Please upload File*</label>
									<div class="col-sm-5">
										<input type="file" class="form-control" id="uploadFile" name="uploadFile" accept="application/vnd.ms-excel,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"/>
									</div>
								</div>
								
								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-3">
										<button type="submit" class="btn btn-primary" value="submit">Submit</button>
											<button type="reset" class="btn btn-primary" name="reset"
											value="Reset">Clear</button>
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

	<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
   <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
   <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
   <script src="resources/js/formValidation.js"></script>
	<script src="resources/js/bootstrap.js"></script>
	<script src="resources/js/dataTables/jquery.dataTables.js"></script>
	<script src="resources/js/dataTables/dataTables.bootstrap.js"></script>
	<script src="resources/js/bootstrap-datepicker.min.js"></script>
	<script src="resources/js/framework/bootstrap.js"></script>
	<script src="resources/js/schoolscript.js"></script>
	
</body>
</html>

