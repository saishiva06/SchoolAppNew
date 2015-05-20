<%@page import="com.shiva.entity.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
Student student = (Student)request.getAttribute("student");

%>

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

	<!-- <fieldset>
		<h2 align="center">Student Registration:</h2>
		<form name="SchoolInfo" action="" method="post">
			<p align="center">Please Fill the following details to submit
				Student details.</p>
			<p align="left">
				<a href=""><input type="button" name="add"
					value="BACK"></input></a>
			</p>
			<input type="hidden" name="rollno" value="<%= student.getRollno()%>">
			<table>

				<tr>
					<td align="right"><label>First Name*: </label></td>
					<td><input id="studentFirstName" name="studentFirstName" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>Last Name*: </label></td>
					<td><input id="studentLastName" name="studentLastName" type="text" value = "/></td>
				</tr>
				<tr>
					<td align="right"><label>Class*: </label></td>
					<td><select name="studentClass">
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
					<td align="right"><label>Section*: </label></td>
                    <td><select name="section">
							<option value="A">A</option>
							<option value="B">B</option>
					</select></td>

				</tr>
				<tr>
					<td align="right"><label>Medium*: </label></td>
					<td><select name="medium">
							<option value="English">English</option>
							<option value="Telugu">Telugu</option>
					</select></td>
				</tr>
                 <tr>

					<td align="right"><label>Father's Name*: </label></td>
					<td><input id="studentFatherName" name="studentFatherName" type="text"  /></td>
				</tr>

				<tr>
					<td align="right"><label>Mother's Name*: </label></td>
					<td><input id="studentMotherName" name="studentMotherName" type="text" >"/></td>
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
					<td align="right"><label>Religion*: </label></td>
					<td><input id="religion" name="religion" type="text" /></td>
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
					<td><input id="gender" name="gender" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>Fee Pay*: </label></td>
					<td><input id="fee" name="fee" type="text"/></td>
				</tr>

			</table>
		</form>

	</fieldset> -->

     <div class="container">
    <div class="panel panel-primary">
    <div class="panel-heading">Student Update </div>
    <div class="panel-body">
    <div class="container">
         <div class="row">
            <div class="col-md-8">
       					<form action="updateStudent.do"  id="addStudent" method="post" class="form-horizontal" >
       						<input type="hidden" name="rollno" value="<%= student.getRollno()%>">
								<div class="form-group">
									<label class="col-sm-3 control-label">Full name</label>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="studentFirstName" name="studentFirstName"
											placeholder="First name"  value = "<%=student.getStudentFirstName() %>" />
									</div>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="studentLastName"   name="studentLastName"
											placeholder="Last name"  value= "<%=student.getStudentLastName() %>"  />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Father Name</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="studentFatherName" name="studentFatherName"
											placeholder="Father Name" value = "<%=student.getStudentFatherName() %>"  />
									</div>
									</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Mother Name</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="studentMotherName" name="studentMotherName"
											placeholder="Mother name" value = "<%=student.getStudentMotherName()%>" />
									</div>
								</div>
                              <div class="form-group">
									<label class="col-sm-3 control-label">Gender</label>
									<div class="col-sm-6">
										<div class="radio">
											<label> <input type="radio" name="gender"
												value = "<%=student.getGender() %>" /> Male
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
											 placeholder="05/19/2015" value = "<%=student.getDob() %>"  /> <span
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
										<input id="religion" name="religion" class="form-control"  type="text" value = "<%=student.getReligion() %>" />
										</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Caste</label>
									<div class="col-sm-5">
										<input id="caste" name="caste"  class="form-control" type="text" value = "<%=student.getCaste() %>"  />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" >Mobile No</label>
									<div class="col-sm-5">
										<input id="mobileNo" name="mobileNo" value = "<%=student.getPhoneNumber() %>"  class="form-control" type="number" />
										</div>
								</div>
								<div class="form-group">
									<label  class="col-sm-3 control-label" >Address</label>
									<div class="col-sm-5">
										<textarea class=" input-xlarge form-control"  id="village" name="village" value = "<%=student.getVillage() %>" 	rows="3"></textarea>
										</div>
								</div>
								<div class="form-group">
									<label  class="col-sm-3 control-label" >Fee Pay</label>
									<div class="col-sm-5">
										<input id="fee" class="form-control"  name="fee" type="text"
										 value = "<%=student.getFees() %>" />
										</div>
								</div>
							<div class="form-group">
									<div class="col-sm-9 col-sm-offset-3">
										<button type="submit" class="btn btn-primary" name="signup"
											value="Update">Update</button>
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
    <script src="resources/js/bootstrap-datepicker.min.js"></script>
    <script src="resources/js/formValidation.js"></script>
    <script src="resources/js/framework/bootstrap.js"></script>
    <script src="resources/js/schoolscript.js"></script>

</body>
</html>
