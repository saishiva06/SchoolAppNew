<%@page import="com.shiva.entity.Teacher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
Teacher teacher = (Teacher)request.getAttribute("teacher");

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN"
	dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Sri Narayana Olympiod School-Teacher Details</title>
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
				$("#datepicker").datepicker();
			});
		</script>
</head>
<body>

	<!-- ****************-->
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
					<ul>
						<li><a href="dashboard.do">Home</a></li>
						<li class="active"><a href="#">Teacher</a></li>
						<li><a href="student.do">Student</a></li>
						<li><a href="feeDetails.do">Fee Details</a></li>
						<li><a href="exams.do">Examination Results</a></li>

					</ul>
				</ul>
			</div>
			<br class="clear" />
		</div>
	</div>
	<!-- *************************** -->
	<fieldset>
		<h2 align="center">Teacher Registration:</h2>
		<form name="SchoolInfo" action="updateTeacher.do" method="post">
			<p align="center">Please Fill the following details to submit
				Teacher details.</p>
			<p align="left">
				<a href="teacher.do"><input type="button" name="add"
					value="BACK"></input></a>
			</p>
			<input type="hidden" name="teacher_id" value="<%= teacher.getTeacherId()%>">
			<table>

				<tr>
					<td align="right"><label>First Name*: </label></td>
					<td><input id="firstName" name="firstName" type="text" value = "<%=teacher.getFirstName() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Last Name*: </label></td>
					<td><input id="lastName" name="lastName" type="text" value = "<%=teacher.getLastName() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Qualification*: </label></td>
					<td><input id="qualification" name="qualification" type="text" value = "<%=teacher.getQualification() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Teaching Subject*: </label></td>
					<td><input id="subject" name="subject" type="text" value = "<%=teacher.getSubject() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Experience*: </label></td>
					<td><input id="experince" name="experience" type="text" value = "<%=teacher.getExp() %>"/></td>
				</tr>

				<tr>
					<td align="right"><label>Date of birth*: </label></td>
					<td><input id="datepicker" name="dob" type="text" value = "<%=teacher.getDob() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Caste*: </label></td>
					<td><input id="caste" name="caste" type="text" value = "<%=teacher.getCaste() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Religion*: </label></td>
					<td><input id="religion" name="religion" type="text" value = "<%=teacher.getReligion() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Mobile Number*: </label></td>
					<td><input id="mobileNo" name="mobileNo" type="text" value = "<%=teacher.getPhoneNumber() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Village*: </label></td>
					<td><input id="village" name="village" type="text" value = "<%=teacher.getVillage() %>"/></td>
				</tr>
				<tr>
					<td align="right"><label>Gender*: </label></td>
					<td><input id="gender" name="gender" type="text" value = "<%=teacher.getGender() %>"/></td>
				</tr>

				<tr>
					<td align="right"><input name="Update" type="submit"
						value="Update" /></td>
					<td><a href="teacher.do"><input name="cancel" type="button" value="Cancel" /></a></td>
				</tr>
			</table>
		</form>
		
	</fieldset>

	<!--************************************************ -->
	<div class="wrapper col5">
		<div id="copyright">
			<p class="fl_left">
				Copyright &copy; 2014 - All Rights Reserved - <a href="#">Sri
					Narayana Olympiod School</a>
			</p>
			<!-- <p class="fl_right">Template by <a href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <br class="clear" /> -->
		</div>
	</div>
</body>
</html>

