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
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/img/favicon.ico">
<link type="text/css" rel="stylesheet"
	href="resources/css/formValidation.css" />
</head>
<body>
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
								<i class="fa fa-phone"></i>Call us | 08742-231234 | +91-9666644801 | +91-8686172057
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
						<li class="nav-item"><a href="dashboard.do">Dashboard</a></li>
						<li class="nav-item"><a href="teacher.do">Teacher</a></li>
						<li class="nav-item"><a href="student.do">Student</a></li>
						<li class="nav-item"><a href="feeDetails.do">Fee</a></li>
						<li class="nav-item dropdown active"><a class="dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown" data-delay="0"
							data-close-others="false" href="examResults.do">Examination <i
								class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="examResultsReg123.do" class="btn btn-primary">Enter Results For 1 2 3 clasess</a></li>
								<li><a href="examResultsReg4567.do" class="btn btn-primary">Enter Results For 4 5 6 7 clasess</a></li>
							    <li><a href="examResultsRegistration.do" class="btn btn-primary">Enter Results For 8 9 10 clasess</a></li>
							   </ul></li>
						<li class="nav-item"><a href="budgetDashboard.do">Budget</a></li>

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

	</div>
	<div class="container">
		<p>
			<b> <a href="examResults.do" class="btn btn-default">Back</a></b>
		</p>
	</div>

	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Exam Result New Registration</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<form action="addExamResults.do" id="addResult" method="post"
							class="form-horizontal">
							<div class="col-md-6">
                           <div class="form-group">
									<label class="col-sm-3 control-label">Roll No</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="rollno"
											name="rollno" placeholder="012345" /><span
											style="color: red" id="errorMessage"></span>


									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Class</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" name="StudentClass"
											id="StudentClass" readonly="readonly">
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
									<label class="col-sm-3 control-label">Telugu</label>
									<div class="col-sm-5">
										<input id="telugu_1" class="form-control" name="telugu_1"
											type="text" />
									</div>
								</div>

<div class="form-group">
									<label class="col-sm-3 control-label">Hindi</label>
									<div class="col-sm-5">
										<input id="hindi_1" class="form-control" name="hindi_1"
											type="text" />
									</div>
								</div>
								
								
								<div class="form-group">
									<label class="col-sm-3 control-label">English</label>
									<div class="col-sm-5">
										<input id="english_1" class="form-control" name="english_1"
											type="text" />
									</div>
								</div>
               <div class="form-group">
									<label class="col-sm-3 control-label">Maths</label>
									<div class="col-sm-5">
										<input id="maths_1" class="form-control" name="maths_1"
											type="text" />
									</div>
								</div>
                    <div class="form-group">
									<label class="col-sm-3 control-label">Physical Science</label>
									<div class="col-sm-5">
										<input id="science_1" class="form-control" name="science_1"
											type="text" />
									</div>
								</div>
                     <div class="form-group">
									<label class="col-sm-3 control-label">Biology Science</label>
									<div class="col-sm-5">
										<input id="science_2" class="form-control" name="science_2"
											type="text" />
									</div>
								</div>
                         <div class="form-group">
									<label class="col-sm-3 control-label">Social</label>
									<div class="col-sm-5">
										<input id="social_1" class="form-control" name="social_1"
											type="text" />
									</div>
								</div>
								

							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label class="col-sm-3 control-label">Full name</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="studentName"
											name="studentName" placeholder="First Middle Last"
											readonly="readonly" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Section</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="section"
											name="section" readonly="readonly" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-xs-3 control-label">Exam Start Date</label>
									<div class="col-xs-5 date">
										<div class="input-group input-append date" id="ExamDatePicker">
											<input type="text" class="form-control EDoe" name="examDate"
												placeholder="DD/MM/YYYY" /> <span
												class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>
									</div>
								</div>

								
								<div class="form-group">
									<label class="col-sm-3 control-label">Computers</label>
									<div class="col-sm-5">
										<input id="computers" class="form-control" name="computers"
											type="text" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Marks Obtained</label>
									<div class="col-sm-5">
										<input id="others" name="others" class="form-control"
											type="text" onClick="fnSum();" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Total Marks</label>
									<div class="col-sm-5">
										<input id="total" name="total" class="form-control"
											type="text" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Grade</label>
									<div class="col-sm-5">
										<select name="grade" class="form-control">
											<option value="">Choose One</option>
											<option value="A">A</option>
											<option value="B">B</option>
											<option value="C">C</option>
											<option value="D">D</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Rank</label>
									<div class="col-sm-5">
										<input id="rank" name="rank" class="form-control" type="text" />
									</div>
								</div>



								<div class="form-group">
									<div class="col-sm-10 col-sm-offset-4">
										<button type="submit" class="btn btn-primary" name="signup"
											value="Sign up" onClick="fnSum();">Submit</button>
										<button type="reset" class="btn btn-primary" name="reset"
											value="RESET">Clear</button>
									</div>
								</div>


							</div>
						</form>

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
	<script type="text/javascript">
	
	$("#rollno").blur(function(){
        var rollno = $("#rollno").val();
	   
       $.ajax({
			type : "GET",
			url : "getStudentDetailsForRollNum.do",
			data : {
					"rollno" : rollno
				},
			success : function(result) {
						if(result) {
						 $("#studentName").val(result.studentFirstName +" " +result.studentLastName);
                         $("#StudentClass").val(result.studentClass);
                         $("#section").val(result.section);
                         $("#errorMessage").text("");
                         } else {
                       $("#studentName").val("");
                        $("#StudentClass").val("");
                         $("#section").val("");
                        $("#errorMessage").text("Please enter a valid roll number");
                       }
                      },
			error : function(result) {
			         	$("#studentName").val("");
                        $("#StudentClass").val("");
                         $("#section").val("");
                        $("#errorMessage").text("Please enter a valid roll number");
                        
                      }
		});
	});
	
	</script>

	<script type="text/javascript">
    function fnSum()
    {
     var num = [];
         num[0] = parseInt(document.getElementById("telugu_1").value);
         num[1] = parseInt(document.getElementById("hindi_1").value);
         num[2]  = parseInt(document.getElementById("english_1").value);
         num[3] = parseInt(document.getElementById("maths_1").value);
         num[4]  = parseInt(document.getElementById("science_1").value);
         num[5] = parseInt(document.getElementById("science_2").value);
         num[6] = parseInt(document.getElementById("social_1").value);
         num[7] = parseInt(document.getElementById("computers").value);
         
         var total = 0;
         for (i = 0; i <= 7; i++) { 
         var check = isNaN(num[i]);
         if(!check) {
          total = total +  num[i];
           } 
         }
         document.getElementById("others").value = total;
    }
    </script>
</body>
</html>
