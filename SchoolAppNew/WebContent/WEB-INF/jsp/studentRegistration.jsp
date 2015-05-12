<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN"
	dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Sri Narayana Olympiod School-Teacher Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="resources/styles/layout.css"
	type="text/css" />
<script type="text/javascript"
	src="resources/scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript"
	src="resources/scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript"
	src="resources/scripts/jquery.cycle.min.js"></script>
<script type="text/javascript"
	src="resources/scripts/jquery.cycle.setup.js"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<link rel="stylesheet" href="/resources/demos/style.css" />
		<script>
			$(function() {
				$("#datepicker").datepicker({
				changeMonth: true,
                 changeYear: true
			});
			});
			$(function() {
				$("#datepicker1").datepicker({
				changeMonth: true,
                 changeYear: true
			});
			});
		</script>
</head>
<body>

	<!-- ****************-->
	<div class="wrapper col1">
		<div id="header">
			<div id="logo">
				<!-- <h1><a href="#">Sharada Education</a></h1> -->
				<p>
					<img src="resources/images/logo.jpg" alt="" />
				</p>
			</div>
			<div id="topnav">
				<ul>
					<center>
						<li class="active">Student Registration</a></li>
					</center>
				</ul>
			</div>
			<br class="clear" />
		</div>
	</div>
	<!-- *************************** -->
	<fieldset>
		<h2 align="center">Student Registration:</h2>
		<form name="SchoolInfo" action="addStudent.do" method="post">
			<p align="center">Please Fill the following details to submit Student
				details.</p>
				<p align="left"><a href="student.do"><input type="button" name="add" value="BACK" ></input></a></p>
			<table>
				<tr>
					<td align="right"><label>First Name*: </label></td>
					<td><input id="studentFirstName" name="studentFirstName" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>Last Name*: </label></td>
					<td><input id="studentLastName" name="studentLastName" type="text" /></td>
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
					<td><input id="studentFatherName" name="studentFatherName" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>Mother's Name*: </label></td>
					<td><input id="studentMotherName" name="studentMotherName" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>Date of birth*: </label></td>
					<td><input id="datepicker" name="studentDob" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>Cast*: </label></td>
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
					<td><select name="gender">
							<option value="Male">Male</option>
							<option value="Female">Female</option>
					</select></td>
				</tr>
				<tr>
					<td align="right"><label for="fee">Fee Pay*: </label></td>
					<td><input id="fee" name="fee" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label for="fee">Date of Joinee*: </label></td>
					<td><input id="datepicker1" name="dateOfJoinee" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><input name="Submit" type="submit"
						value="Submit" /></td>
					<td><input name="clear" type="reset" value="Clear" /></td>
				</tr>
			</table>
		</form>
	</fieldset>


	<!--************************************************ -->
	<div class="wrapper col5">
		<div id="copyright">
			<p class="fl_left">
				Copyright &copy; 2014 - All Rights Reserved - <a href="#">Sri Narayana Olympiod School</a>
			</p>
			<!-- <p class="fl_right">Template by <a href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <br class="clear" /> -->
		</div>
	</div>
</body>
</html>

