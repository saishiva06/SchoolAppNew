<!DOCTYPE html>
<html>
<head>
    <title>SRI NARAYANA OLYPIAD SCHOOL</title>
    <link type="text/css" rel="stylesheet" href="resources/css/bootstrap.css" />
    <link type="text/css" href="resources/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="resources/css/style.css" />
    <link href="resources/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
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
                   <li ><a href="index.do">Home</a></li>
                    <li ><a href="admin.do">Admin</a></li>
                    <li class="active"><a href="#">Notice Board</a></li>
                    <li ><a href="">Contact Us</a></li>
                 </ul>
            </div>
            
        </div>
    </div>
 
  <div class="container">
    <div class="panel panel-primary">
    <div class="panel-heading">Student Marks </div>
    <div class="panel-body">
    <div class="container">
         <div class="row">
            <div class="col-md-8">
       					<form action="examResults.do"  id="examResults" method="post" class="form-horizontal" >
								<div class="form-group">
									<label class="col-sm-3 control-label">Student Roll Number*</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="studentRollNumber" name="rollNo"
											placeholder="Student Roll Number" />
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
<!-- Footer and Modal
    ==========================-->
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <hr/>
                <p>Copyright &copy; Sri Narayana Olypiad School.
                    <a data-toggle="modal" href="#myModal">Terms and Conditions</a>
                </p>
            </div>
        </div>
    </div>
    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/bootstrap.js"></script>
    <script src="resources/js/dataTables/jquery.dataTables.js"></script>
    <script src="resources/js/dataTables/dataTables.bootstrap.js"></script>
    <script src="resources/js/contentHover.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
                 $('#myToolTip').tooltip();
            
            $('#myPopOver').popover();

            $('#d1').contenthover({
                overlay_background:'#000',
                overlay_opacity:0.8
            });

            $('#d2').contenthover({
                effect:'slide',
                slide_speed:300,
                overlay_background:'#000',
                overlay_opacity:0.8
            });
            });
    </script>
   </body>
</html>
