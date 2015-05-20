<!DOCTYPE html>
<html>
<head>
    <title>Sri Narayana Olympiad School</title>
<link type="text/css" rel="stylesheet" href="resources/css/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="resources/css/font-awesome.css" >
    <link type="text/css" rel="stylesheet" href="resources/css/style.css" />
    <link type="text/css" rel="stylesheet" href="resources/css/datepicker.min.css" />
    <link type="text/css" rel="stylesheet" href="resources/css/datepicker3.min.css" />
    <link type="text/css" rel="stylesheet" href="resources/css/formValidation.css"/>
</head>
<body>

	<!-- Fixes Navigation Bar with drop down menu
    ======================================================-->
       <div class="navbar navbar-inner ">
        <div class="container">
             <div class="navbar-header">
                <button type="buttton" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="#" class="navbar-brand"><img  width="90px" height="80px"  src="resources/img/logo.jpg" class="logo" alt="Logo" ></img></a>
            </div>
            <div>
           <h2 class="well" > SRI NARAYANA OLYMPIAD SCHOOL </h2>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li ><a href="dashboard.do">Home</a></li>
                    <li class="active" ><a href="#">Teacher</a></li>
                    <li ><a href="student.do">Student</a></li>
                     <li ><a href="feeDetails.do">Fee</a></li>
                    <li ><a href="examResults.do">Examination</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="logout.do">Logout</a></li>
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
									<label class="col-sm-3 control-label">Qualification</label>
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
										<div class="input-group input-append date" id="datePicker">
											<input type="text" class="form-control" name="dob"
												placeholder="05/19/2015" /> <span
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
  <div class="container">
        <div class="row">
            <div class="col-md-12">
                <hr/>
                <p>Copyright &copy; Sri Narayana Olympiad School.
                    <a data-toggle="modal" href="#myModal">Terms and Conditions</a>
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
