<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN"
	dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>School Education</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="resources/styles/layout.css" type="text/css" />
<script type="text/javascript" src="resources/scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.cycle.min.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.cycle.setup.js"></script>
</head>
<body>
	<!-- ####################################################################################################### -->
	<div class="wrapper col1">
		<div id="header">
			<div id="logo">
				<!-- <h1><a href="#">Sri Narayana Olympiod School</a></h1> -->
				<p>
					<img src="resources/images/logo.jpg" alt="" />
				</p>
			</div>
			<div id="topnav">
				<ul>
					<li><a href="dashboard.do">Home</a></li>
					<li><a href="teacher.do">Teacher</a></li>
					<li class="active"><a href="#">Student</a></li>
					<li><a href="feeDetails.do">Fee Details</a></li>
					<li><a href="exams.do">Examination Results</a></li>

				</ul>
			</div>
			<br class="clear" />
		</div>
	</div>

	<!-- ####################################################################################################### -->
<fieldset>

		<h2 align="center">Student Details</h2>

		<form name="schoolInfo" action="infoServlet" method="post">

			<a href="studentRegistration.do"><input type="button" name="add"
					value="Click Here to add new Student Registration"></input></a>	
					
					<table>
                      <tr>
						<th>Roll No</th>
						<th>Name</th>
						<th>Class</th>
						<th>Section</th>
						<th>Address</th>
						<th>Edit</th>
					</tr>
					<tr>
						<td>1</td>
						<td>Shiva Kumar</td>
						<td>SSC</td>
						<td>4</td>
						<td>HYD</td>
						<td><input type="button" name="add" value="Edit"></td>
					</tr>
					<tr>
						<td>1</td>
						<td>Shiva Kumar</td>
						<td>SSC</td>
						<td>4</td>
						<td>HYD</td>
						<td><input type="button" name="add" value="Edit"></td>
					</tr>
					<tr>
						<td>1</td>
						<td>Shiva Kumar</td>
						<td>SSC</td>
						<td>4</td>
						<td>HYD</td>
						<td><input type="button" name="add" value="Edit"></td>
					</tr>
					<tr>
						<td>1</td>
						<td>Shiva Kumar</td>
						<td>SSC</td>
						<td>4</td>
						<td>HYD</td>
						<td><input type="button" name="add" value="Edit"></td>
					</tr>
				</table>
		</form>
	</fieldset>
	
	<!-- ####################################################################################################### -->
	<div class="wrapper col5">
		<div id="copyright">
			<p class="fl_left">
				Copyright &copy; 2014 - All Rights Reserved - <a href="#">Sharadha
					Education</a>
			</p>
		</div>
	</div>
</body>
</html>