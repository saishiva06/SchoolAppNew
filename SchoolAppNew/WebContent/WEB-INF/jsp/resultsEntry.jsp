<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN"
	dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Sri Narayana Olympiod School-Results Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="resources/styles/layout.css"
	type="text/css" />
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
						<li class="active">Results
								Registration</a></li>
					</center>
				</ul>
			</div>
			<br class="clear" />
		</div>
	</div>
	<!-- *************************** -->
	<fieldset>
		<h2 align="center">Fee Registration:</h2>
		<form name="SchoolInfo" action="addFeeDetails.do" method="post">
			<p align="center">Please Fill the following details to submit fee
				details.</p>
				<p align="left"><a href="exams.do"><input type="button" name="add" value="BACK" ></input></a></p>
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
					<td align="right"><label>Exam Title*: </label></td>
					<td><input id="examTitle" name="examTitle" type="text" /></td></tr>
				<tr>
					<td align="right"><label>Exam Date*: </label></td>
					<td><input id="datepicker" name="examDate" type="text" /></td>
				</tr>

				<tr>
					<td align="right"><label>Telugu-1*: </label></td>
					<td><input id="telugu_1" name="telugu_1" type="text" /></td></tr>
				<tr>
					<td align="right"><label>Telugu-2*: </label></td>
					<td><input id="telugu_2" name="telugu_2" type="text" /></td>
				</tr>

				<tr>
					<td align="right"><label>Hindi-1*: </label></td>
					<td><input id="hindi_1" name="hindi_1" type="text" /></td></tr>
				<tr>
					<td align="right"><label>Hindi-2*: </label></td>
					<td><input id="hindi_2" name="hindi_2" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>English-1*: </label></td>
					<td><input id="english_1" name="english_1" type="text" /></td></tr>
				<tr>
					<td align="right"><label>English-2*: </label></td>
					<td><input id="english_2" name="english_2" type="text" /></td>
				</tr>

                  <tr>
					<td align="right"><label>Maths-1*: </label></td>
					<td><input id="maths_1" name="maths_1" type="text" /></td></tr>
				<tr>
					<td align="right"><label>Maths-2*: </label></td>
					<td><input id="maths_2" name="maths_2" type="text" /></td>
				</tr>

                   <tr>
					<td align="right"><label>Science-1*: </label></td>
					<td><input id="science_1" name="science_1" type="text" /></td></tr>
				<tr>
					<td align="right"><label>Science-2*: </label></td>
					<td><input id="science_2" name="science_2" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>Social-1*: </label></td>
					<td><input id="social_1" name="social_1" type="text" /></td></tr>
				<tr>
					<td align="right"><label>Social-2*: </label></td>
					<td><input id="social_2" name="social_2" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>Computers*: </label></td>
					<td><input id="computers" name="computers" type="text" /></td></tr>
				<tr>
					<td align="right"><label>Arts*: </label></td>
					<td><input id="arts" name="arts" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><label>Others*: </label></td>
					<td><input id="others" name="others" type="text" /></td></tr>
				<tr>
					<td align="right"><label>Total*: </label></td>
					<td><input id="total" name="total" type="text" /></td>
				</tr>
				
				<tr>
					<td align="right"><label>Grade*: </label></td>
					<td><select name="grade">
							<option value="A">A</option>
							<option value="B">B</option>
							<option value="C">C</option>
							<option value="D">D</option>
						</select></td></tr>
				<tr>
					<td align="right"><label>Total*: </label></td>
					<td><input id="total" name="total" type="text" /></td>
				</tr>
				<tr>
					<td align="right"><input name="Submit" type="submit"
						value="Submit" /></td>
					<td><input name="clear" type="reset" value="Clear" /></td>
				</tr>
			</table>
		</form>
	</fieldset>



<div class="wrapper col4">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2015 - All Rights Reserved - Sri Narayana Olympiod School</p>
  </div>
</div>
<script type="text/javascript" src="resources/scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.cycle.min.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.cycle.setup.js"></script>
<script type="text/javascript" src="resources/scripts/jquery-1.7.1.min.js"></script> 
<script type="text/javascript" src="resources/scripts/jquery.validate.js"></script>
<script type="text/javascript" src="resources/scripts/bootstrap-datepicker.min.js"></script>  
<script type="text/javascript" src="resources/scripts/schoolscript.js"></script> 
</body>
</html>

