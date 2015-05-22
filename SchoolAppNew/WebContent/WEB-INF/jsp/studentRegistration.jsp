<!DOCTYPE html>
<html>
<head>
    <title>Sri Narayana Olypiad School</title>
    <link type="text/css" rel="stylesheet" href="resources/css/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="resources/css/font-awesome.css" >
    <link type="text/css" rel="stylesheet" href="resources/css/style.css" />
    <link type="text/css" rel="stylesheet" href="resources/css/datepicker.min.css" />
    <link type="text/css" rel="stylesheet" href="resources/css/datepicker3.min.css" />
    <link type="text/css" rel="stylesheet" href="resources/css/formValidation.css"/>
        <link rel="icon" type="image/png" sizes="16x16" href="resources/img/favicon.ico">
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
                    <li ><a href="teacher.do">Teacher</a></li>
                    <li class="active" ><a href="#">Student</a></li>
                     <li ><a href="feeDetails.do">Fee</a></li>
                    <li><a href="examResults.do">Examination</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="logout.do">Logout</a></li>
                </ul>
            </div>

        </div>
    </div>
     <div class="container">
                    <p>
                     <b>   <a href="student.do" class="btn btn-default">Back</a></b>
                    </p>
     </div>

    <div class="container">
    <div class="panel panel-primary">
    <div class="panel-heading">Student New Registration </div>
    <div class="panel-body">
    <div class="container">
         <div class="row">
            <div class="col-md-8">
       					<form action="addStudent.do"  id="addStudent" method="post" class="form-horizontal" >
								<div class="form-group">
									<label class="col-sm-3 control-label">Full name</label>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="studentFirstName" name="studentFirstName"
											placeholder="First name" />
									</div>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="studentLastName"   name="studentLastName"
											placeholder="Last name" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Father Name</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="studentFatherName" name="studentFatherName"
											placeholder="Father Name" />
									</div>
									</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Mother Name</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="studentMotherName" name="studentMotherName"
											placeholder="Mother name" />
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
									<label class="col-xs-3 control-label">Date Of Birth</label>
									<div class="col-xs-5 date">
										<div class="input-group input-append date"
											id="datePicker">
											<input type="text" class="form-control" name="studentDob"
											 placeholder="01/01/2000"  /> <span
												class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>
									</div>
								</div>
					            <div class="form-group">
									<label class="col-sm-3 control-label">Class</label>
									<div class="col-sm-5">
										<select
										name="studentClass" class="form-control">
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
										<option value="English">English</option>
										<option value="Telugu">Telugu</option>
									</select>
								</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Section</label>
									<div class="col-sm-5">
										<select name="section" class="form-control">
										<option value="A">A</option>
										<option value="B">B</option>
										</select>
									</div>
								</div>
                           <div class="form-group">
									<label class="col-sm-3 control-label" >Religion</label>
									<div class="col-sm-5">
										<input id="religion" name="religion" class="form-control"  type="text" />
										</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Caste</label>
									<div class="col-sm-5">
										<input id="caste" name="caste"  class="form-control" type="text" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" >Mobile No</label>
									<div class="col-sm-5">
										<input id="mobileNo" name="mobileNo"  class="form-control" type="number" />
										</div>
								</div>
								<div class="form-group">
									<label  class="col-sm-3 control-label" >Address</label>
									<div class="col-sm-5">
										<textarea class=" input-xlarge form-control"  id="village" name="village"
											rows="3"></textarea>
										</div>
								</div>
								<div class="form-group">
									<label  class="col-sm-3 control-label" >Fee Pay</label>
									<div class="col-sm-5">
										<input id="fee" class="form-control"  name="fee" type="text" />
										</div>
								</div>
								<div class="form-group">
									<label class="col-xs-3 control-label">Date Of Joinee</label>
									<div class="col-xs-5 date">
										<div class="input-group input-append date" id="datePicker1">
											<input type="text" class="form-control" name="studentDoj"
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
