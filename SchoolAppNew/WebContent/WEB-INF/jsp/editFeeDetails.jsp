<%@page import="com.shiva.entity.FeeDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
FeeDetails feeDetails = (FeeDetails)request.getAttribute("feeDetails");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN"
	dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Sri Narayana Olympiod School-Fee Registration</title>
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
						<li class="active">Fee
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
		<form name="SchoolInfo" action="updateFeeDetails.do" method="post">
			<p align="center">Please Fill the following details to submit fee
				details.</p>
				<p align="left"><a href="feeDetails.do"><input type="button" name="add" value="BACK" ></input></a></p>
			   <input type="hidden" name="recieptNo" value="<%= feeDetails.getRecieptNo()%>">
			<table>
				<tr>
					<td align="right"><label>Full Name*: </label></td>
					<td><input id="name" name="studentName" type="text" value = "<%=feeDetails.getStudentName() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label for="name">Roll Number*: </label></td>
					<td><input id="name" name="rollno" type="text"  value = "<%=feeDetails.getRollNo() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label for="name">Class*: </label></td>
					<td><select name="StudentClass" >
					         <option value = "<%=feeDetails.getStudentClass() %>" selected = "selected"></option>
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
					<td><input id="feePaid" name="feePaid" type="text"  value = "<%=feeDetails.getOtherFee() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label for="feepaidDate">Fee Paid Date*: </label></td>
					<td><input id="datepicker" name="feepaidDate" type="text"  value = "<%=feeDetails.getFeePayDate1() %>"/></td>
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



