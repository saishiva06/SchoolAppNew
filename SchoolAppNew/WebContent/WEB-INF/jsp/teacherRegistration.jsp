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
    <div class="panel panel-primary">
    <div class="panel-heading">Teacher New Registration </div>
    <div class="panel-body">
    <div class="container">
         <div class="row">
            <div class="col-md-8">
	<fieldset>
		<h2 align="center">Teacher Registration:</h2>
		<form name="SchoolInfo" action="addTeacher.do" method="post">
			<p align="center">Please Fill the following details to submit
				Teacher details.</p>
			<p align="left">
				<a href="teacher.do"><input type="button" name="add"
					value="BACK"></input></a>
			</p>
			<table>

				<tr>
					<td align="right"><label>First Name*: </label></td>
					<td><input id="firstName" name="firstName" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>Last Name*: </label></td>
					<td><input id="lastName" name="lastName" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>Qualification*: </label></td>
					<td><input id="qualification" name="qualification" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>Teaching Subject*: </label></td>
					<td><input id="subject" name="subject" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>Experience*: </label></td>
					<td><input id="experince" name="experience" type="text" /></td>
				</tr>

				<tr>
					<td align="right"><label>Date of birth*: </label></td>
					<td><input id="datepicker" name="dob" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>Caste*: </label></td>
					<td><input id="caste" name="caste" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>Mobile Number*: </label></td>
					<td><input id="mobileNo" name="mobileNo" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>Address*: </label></td>
					<td><input id="village" name="village" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>Gender*: </label></td>
					<td><select name="classs">
							<option value="Male">male</option>
							<option value="Female">female</option>
					</select>
					</td>
				</tr>

				<tr>
					<td align="right"><input name="Submit" type="submit"
						value="Submit" /></td>
					<td><input name="clear" type="reset" value="Clear" /></td>
				</tr>
			</table>
		</form>
	</fieldset>
	</div>
         </div>
    </div>
   </div>
   </div>
</div>
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
        <script>
            $(document).ready(function () {
            	$('.datepicker').datepicker();
            });
    </script>
</body>
</html>