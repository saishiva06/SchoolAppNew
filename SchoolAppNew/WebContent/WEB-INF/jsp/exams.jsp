<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
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
      <p><img src="resources/images/logo.jpg" alt="" /></p>
    </div>
    <div id="topnav">
      <ul>
        <li><a href="dashboard.do">Home</a></li>
        <li><a href="teacher.do">Teacher</a></li>
        <li><a href="student.do">Student</a></li>
         <li><a href="feeDetails.do">Fee Details</a></li>
        <li class="active"><a href="#">Examination Results</a></li>
        
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>

<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="homecontent">
   	<h2 align="center">Student Marks</h2>
		<fieldset>
			<table>
                <tr>
				<td align="right"><label>Full Name*: </label>
					<input id="name" name="studentName" type="text" /></td>
					<td align="right"><label for="name">Roll Number*: </label></td>
					<td><input id="name" name="rollno" type="text" /></td>
				<td align="right"><label for="name">Class*: </label><select name="classs">
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
				</select></td><td align="right"><input name="Submit" type="submit"
						value="Submit" /><input name="clear" type="reset" value="Clear" /></td>
				
				</tr>
				
			</table> 
			
			<form name="schoolInfo" action="infoServlet" method="post">

				<table>

					<tr>
					  <th>Examination</th>
						<th>Telugu</th>
						<th>Hindi</th>
						<th>English</th>
						<th>Maths</th>
						<th>Science</th>
						<th>Socail</th>
						<th>Total</th>
						<th>Grade</th>
						<th>Rank</th>
						<th></th>
						
					</tr>
					<tr>
						<td>Quarterly Exams</td>
						<td>100</td>
						<td>80</td>
						<td>80</td>
						<td>80</td>
						<td>89</td>
						<td>99</td>
						<td>589</td>
						<td>A</td>
						<td>2</td>
						<td><input type="button" name="add" value="Edit"></td>
					</tr>
					<tr>
						<td>Half Yearly Exams</td>
						<td>100</td>
						<td>80</td>
						<td>80</td>
						<td>80</td>
						<td>89</td>
						<td>99</td>
						<td>589</td>
						<td>A</td>
						<td>2</td>
						<td><input type="button" name="add" value="Edit"></td>
					</tr>
					<tr>
						<td>Pre Final Exams</td>
						<td>100</td>
						<td>80</td>
						<td>80</td>
						<td>80</td>
						<td>89</td>
						<td>99</td>
						<td>589</td>
						<td>A</td>
						<td>2</td>
						<td><input type="button" name="add" value="Edit"></td>
					</tr>
					<tr>
						<td>Final Exams</td>
						<td>100</td>
						<td>80</td>
						<td>80</td>
						<td>80</td>
						<td>89</td>
						<td>99</td>
						<td>589</td>
						<td>A</td>
						<td>2</td>
						<td><input type="button" name="add" value="Edit"></td>
					</tr>
				</table>
			</form>
	 </fieldset>
  </div>
</div>
<!-- ####################################################################################################### -->

  
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - <a href="#">Sharadha Education</a></p>
     </div>
</div>
</body>
</html>
