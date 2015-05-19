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
                    <li  ><a href="teacher.do">Teacher</a></li>
                    <li ><a href="student.do">Student</a></li>
                     <li class="active" ><a href="#">Fee</a></li>
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
    <div class="panel-heading">Fee New Registration </div>
    <div class="panel-body">
    <div class="container">
         <div class="row">
            <div class="col-md-8">
	<fieldset>
		<h2 align="center">Fee Registration:</h2>
		<form name="SchoolInfo" action="addFeeDetails.do" method="post">
			<p align="center">Please Fill the following details to submit fee
				details.</p>
				<p align="left"><a href="feeDetails.do"><input type="button" name="add" value="BACK" ></input></a></p>
			<table>
				<tr>
					<td align="right"><label>Full Name*: </label></td>
					<td><input id="name" name="studentName" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label for="name">Roll Number*: </label></td>
					<td><input id="name" name="rollno" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label for="name">Class*: </label></td>
					<td><select name="StudentClass">
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
					</select></td>
				</tr>

				<tr>
					<td align="right"><label for="name">Section*: </label></td>

					<td><select name="section">
							<option value="A">A</option>
							<option value="B">B</option>
					</select></td>

				</tr>

				<tr>
					<td align="right"><label for="medium">Medium*: </label></td>
					<td><select name="medium">
							<option value="English">English</option>
							<option value="Telugu">Telugu</option>
					</select></td>
				</tr>

				<tr>
					<td align="right"><label for="mobileNo">Mobile
							Number*: </label></td>
					<td><input id="mobileNo" name="mobileNo" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label for="name">Fee Type*: </label></td>
                    <td><select name="feeType">
							<option value="admissionFee">Admission Fee</option>
							<option value="tutionFee">Tution Fee</option>
							<option value="examFee">Exam Fee</option>
							<option value="transportFee">Transport Fee</option>
							<option value="iiTFee">IIT Fee</option>
							<option value="otherFee">Other Fee</option>
					</select></td>

				</tr>
				<tr>
					<td align="right"><label for="feePaid">Fee Paid*: </label></td>
					<td><input id="feePaid" name="feePaid" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label for="feepaidDate">Fee Paid Date*: </label></td>
					<td><input id="datepicker" name="feepaidDate" type="text" /></td>
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

