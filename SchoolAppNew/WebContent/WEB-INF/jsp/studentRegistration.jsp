<!DOCTYPE html>
<html>
<head>
    <title>Sri Narayana Olypiad School</title>
    <link type="text/css" rel="stylesheet" href="resources/css/bootstrap.css" />
    <link type="text/css" href="resources/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="resources/css/style.css" />
     <link type="text/css" rel="stylesheet" href="resources/css/datepicker.min.css" />
    <link href="resources/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
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
           <h2 class="well" > SRI NARAYANA OLYPIAD SCHOOL </h2>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li ><a href="dashboard.do">Home</a></li>
                    <li><a href="about.html">Teacher</a></li>
                    <li class="active" ><a href="#">Student</a></li>
                    <li ><a href="feature.html">Fee</a></li>
                    <li><a href="contact.html">Examination</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="admin.html">Logout</a></li>
                </ul>
            </div>
            
        </div>
    </div>
     <div class="container">
                    <p>
                     <b>   <a href="student.do" class="btn btn-default">Back</a></b>
                    </p>
     </div>               
    <!--  Jquery Table Start Here
    ++++++++++++++++++++++++++++++-->
    <div class="container">
    <div class="panel panel-primary">
    <div class="panel-heading">Student New Registration </div>
    <div class="panel-body">
    <div class="container">
         <div class="row">
            <div class="col-md-8">
							<form name="schoolInfo" action="infoServlet" method="post">
								<div class="form-group">
									    <label  for="name">First Name</label>
									<input id="studentFirstName" name="studentFirstName"  class="form-control"
											type="text" />
								</div>
								<div class="form-group">
									<label for="name">Last Name</label>
							
										<input id="studentLastName"  class="form-control"  name="studentLastName" type="text" />
								
								</div>
								<div class="form-group">
								    	<label for="name">Select Class</label> <select
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
								<div class="form-group">
									<label for="name">Gender</label> <select name="gender"
										class="form-control">
										<option value="male">Male</option>
										<option value="female">Female</option>
									</select>
								</div>
								<div class="form-group">
									<label for="name">Section</label> <select name="section"
										class="form-control">
										<option value="A">A</option>
										<option value="B">B</option>
									</select>
								</div>
								<div class="form-group">
									<label for="name">Medium</label>
									  <select name="section" class="form-control">
										<option value="English">English</option>
										<option value="Telugu">Telugu</option>
									</select>
								</div>
								<div class="form-group">
									<label  for="name">Father's Name</label>
									
										<input id="studentFatherName" name="studentFatherName" class="form-control"
											type="text" />
							
								</div>
								<div class="form-group">
									<label for="name">Mother's Name</label>
							
										<input id="studentMotherName" name="studentMotherName" class="form-control"
											type="text" />
									</div>
								<div class="form-group">
									<label class="">Date</label>
									<div class="date">
										<div class="input-group input-append date" id="datePicker">
											<input id="datepicker" name="studentDob" class="form-control"
												type="text" /> <span class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label  for="name">Religion</label>
									
										<input id="religion" name="religion" class="form-control"  type="text" />
									
								</div>
								<div class="form-group">
									<label for="name">Caste</label>
									
										<input id="caste" name="caste"  class="form-control" type="text" />
							
								</div>
								<div class="form-group">
									<label  for="name">Mobile No</label>
									
										<input id="mobileNo" name="mobileNo"  class="form-control" type="number" />
									
								</div>
								<div class="form-group">
									<label  for="message">Address</label>
									
										<textarea class=" input-xlarge form-control"  id="village" name="village"
											rows="3"></textarea>
								
								</div>
								<div class="form-group">
									<label  for="name">Fee Pay</label>
									
										<input id="fee" class="form-control"  name="fee" type="text" />
								
								</div>
								<div class="form-group">
									<label for="jdate">Joining Date</label>
									<div class="col-xs-5 date">
										<div class="input-group input-append date" id="datePicker">
											<input id="datepicker" name="studentDob" class="form-control"
												type="text" /> <span class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>
									</div>
								</div>
								<div class="form-group">
									<button type="submit" class="btn btn-success">Register</button>
									<button type="reset" class="btn">Cancel</button>
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
                <p>Copyright &copy; Creativity Tuts.
                    <a data-toggle="modal" href="#myModal">Terms and Conditions</a>
                </p>
                
                <!-- Modal -->
                <div class="modal fade" id="myModal" tabinex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h2>Terms and Conditions</h2>
                            </div>
                            <div class="modal-body">
                                <p>The text will go here.....</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    
    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/bootstrap.js"></script>
    <script src="resources/js/dataTables/jquery.dataTables.js"></script>
    <script src="resources/js/dataTables/jquery.validate.js"></script>
    <script src="resources/js/bootstrap-datepicker.js"></script>
    <script src="resources/js/dataTables/dataTables.bootstrap.js"></script>
    <script src="resources/js/dataTables/schoolscript.js"></script>
        <script>
            $(document).ready(function () {
            	$('.datepicker').datepicker()
            });
    </script>
</body>
</html>
