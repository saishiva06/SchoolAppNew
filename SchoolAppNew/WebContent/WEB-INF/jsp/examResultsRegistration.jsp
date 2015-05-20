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
                    <li ><a href="teacher.do">Teacher</a></li>
                    <li ><a href="student.do">Student</a></li>
                     <li ><a href="feeDetails.do">Fee</a></li>
                    <li  class="active" ><a href="examResults.do">Examination</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="logout.do">Logout</a></li>
                </ul>
            </div>

        </div>
    </div>


     <div class="container">
                    <p>
                     <b>   <a href="examResults.do" class="btn btn-default">Back</a></b>
                    </p>
     </div>

	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Exam Result New Registration</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-8">


							<form action="addExamResults.do" id="addResult" method="post"
								class="form-horizontal">
								<div class="form-group">
									<label class="col-sm-3 control-label">Full name</label>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="studentName"
											name="studentName" placeholder="Student full name" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Roll No</label>
									<div class="col-sm-5">
										<input type="number" class="form-control" id="rollno"
											name="rollno" placeholder="Roll No:" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Class</label>
									<div class="col-sm-5">
										<select name="studentClass"  class="form-control" >
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
									<label class="col-sm-3 control-label">Exam Title </label>
									<div class="col-sm-5">
										<input id="examTitle" class="form-control"  name="examTitle" type="text" />
									</div>
								</div>
                                 <div class="form-group">
									<label class="col-xs-3 control-label">Exam Date</label>
									<div class="col-xs-5 date">
										<div class="input-group input-append date" id="datePicker">
											<input type="text" class="form-control" name="examDate"
												placeholder="05/19/2015" /> <span
												class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Telugu-1</label>
									<div class="col-sm-5">
										<input id="telugu_1" class="form-control"  name="telugu_1" type="text" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Telugu-2</label>
									<div class="col-sm-5">
										<input id="telugu_2"  class="form-control" name="telugu_2" type="text" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Hindi-1</label>
									<div class="col-sm-5">
										<input id="hindi_1"  class="form-control" name="hindi_1" type="text" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Hindi-2</label>
									<div class="col-sm-5">
										<input id="hindi_2" class="form-control"  name="hindi_2" type="text" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">English-1</label>
									<div class="col-sm-5">
										<input id="english_1"  class="form-control" name="english_1" type="text" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">English-2</label>
									<div class="col-sm-5">
										<input id="english_2"  class="form-control" name="english_2" type="text" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Maths-1</label>
									<div class="col-sm-5">
										<input id="maths_1"  class="form-control" name="maths_1" type="text" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Maths-2</label>
									<div class="col-sm-5">
										<input id="maths_2"  class="form-control" name="maths_2" type="text" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Science-1</label>
									<div class="col-sm-5">
										<input id="science_1"  class="form-control" name="science_1" type="text" />
									</div>
								</div>


								<div class="form-group">
									<label class="col-sm-3 control-label">Science-2</label>
									<div class="col-sm-5">
										<input id="science_2"  class="form-control" name="science_2" type="text" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Social-1</label>
									<div class="col-sm-5">
										<input id="social_1"  class="form-control" name="social_1" type="text" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Social-2</label>
									<div class="col-sm-5">
										<input id="social_2"  class="form-control" name="social_2" type="text" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Computers</label>
									<div class="col-sm-5">
										<input id="computers"  class="form-control" name="computers" type="text" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Arts</label>
									<div class="col-sm-5">
										<input id="arts" name="arts" class="form-control"  type="text" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Total Marks</label>
									<div class="col-sm-5">
										<input id="others" name="others" class="form-control"  type="text" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Marks Obtained</label>
									<div class="col-sm-5">
										<input id="total" name="total" class="form-control"  type="text" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Grade</label>
									<div class="col-sm-5">
										<select name="grade" class="form-control" >
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
										<input id="rank" name="rank" class="form-control"  type="text" />
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
