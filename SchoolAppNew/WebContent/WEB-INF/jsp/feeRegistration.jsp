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

							<form action="addFeeDetails.do" id="addFee" method="post"
								name="myform" class="form-horizontal">
								 <div class="form-group">
									<label class="col-sm-3 control-label">Admission No</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="rollno"
											name="rollno" placeholder="012345"/><span style = "color:red"  id = "errorMessage"></span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Full name</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="studentName"
											name="studentName" readonly = "readonly"/>
									</div>
								</div>

								
								<div class="form-group">
									<label class="col-sm-3 control-label">Class</label>
									<div class="col-sm-5">
										<select name="StudentClass" class="form-control" id ="StudentClass" readonly = "readonly">
											<option value="Choose One">Choose One</option>
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
									<label class="col-sm-3 control-label">Section</label>
									<div class="col-sm-5">
										<select name="section" class="form-control" id ="section" readonly = "readonly">
											<option value="Choose One">Choose One</option>
											<option value="A">A</option>
											<option value="B">B</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Medium</label>
									<div class="col-sm-5">
										<select name="medium" class="form-control" id ="medium" readonly = "readonly">
											<option value="Choose One">Choose One</option>
											<option value="English">English</option>
											<option value="Telugu">Telugu</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Mobile No</label>
									<div class="col-sm-5">
										<input id="mobileNo" name="mobileNo" class="form-control"
											type="number"  readonly = "readonly"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Fee Type</label>
									<div class="col-sm-5">
										<select name="feeType" class="form-control" required = "required">
											<option value="">Choose One</option>
											<option value="Admission Fee">Admission Fee</option>
											<option value="Tution Fee">Tution Fee</option>
											<option value="Exam Fee">Exam Fee</option>
											<option value="Transport Fee">Transport Fee</option>
											<option value="IIT Fee">IIT Fee</option>
											<option value="Other Fee">Other Fee</option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Fee Paid</label>
									<div class="col-sm-5">
										<input id="feePaid" name="feePaid" class="form-control"
											type="number" placeholder="1000"/>
									</div>
								</div>

								<div class="form-group">
									<label class="col-xs-3 control-label">Fee Paid Date</label>
									<div class="col-xs-5 date">
										<div class="input-group input-append date" id="FeePaidDatePicker">
											<input type="text" class="form-control fDop" name="feepaidDate"
												placeholder="01/01/2000" /> <span
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
						Narayana Olympiad Schools � 2015 All rights reserved. </a>
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
	<script type = "text/javascript">
	
	$("#rollno").blur(function(){
        var rollno = $("#rollno").val();
	   
       $.ajax({
			type : "GET",
			url : "getStudentDetailsForAdmNum.do",
			data : {
					"rollno" : rollno
				},
			success : function(result) {
						if(result) {
						 $("#studentName").val(result.studentFirstName +" " +result.studentLastName);
                         $("#StudentClass").val(result.studentClass);
                         $("#section").val(result.section);
                         $("#medium").val(result.medium);
                         $("#mobileNo").val(result.phoneNumber);
                          $("#errorMessage").text("");
                       } else {
                       $("#studentName").val("");
                        $("#StudentClass").val("");
                        $("#section").val("");
                        $("#medium").val("");
                        $("#mobileNo").val("");
                        $("#errorMessage").text("Please enter a valid Admission number");
                    }
                      },
			error : function(result) {
			          	$("#studentName").val("");
                        $("#StudentClass").val("");
                        $("#section").val("");
                        $("#medium").val("");
                        $("#mobileNo").val("");
                         $("#errorMessage").text("Please enter a valid Admission number");
                    }
		});
	});
	
	</script>

</body>
</html>

