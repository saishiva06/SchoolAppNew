<%@page import="com.shiva.entity.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>
<%

	List<Student> mydata = (List<Student>) request
			.getAttribute("studentsData");
	

%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/font-awesome.css">
<link type="text/css" rel="stylesheet" href="resources/css/style.css" />
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/img/favicon.ico">
<link type="text/css" rel="stylesheet"
	href="resources/css/datepicker.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/datepicker3.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/formValidation.css" />
</head>
<script type="text/javascript">
	function printpage() {
		var printButton = document.getElementById("printpagebutton");
		var backButton = document.getElementById("backButton");
		printButton.style.visibility = 'hidden';
		backButton.style.visibility = 'hidden';
		window.print()
	}
</script>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">

				<img id="logo" class="img-responsive img-inblock"
					src="resources/img/logon.png" alt="Logo" align="left" />

				<h3>
					<b>SRI NARAYANA OLYMPIAD SCHOOLS</b>
				</h3>
				<h4>Recognised By Govt of Telangana</h4>
				<h5>
					<b>Mustafa Nagar, Khammam- 507001</b>
				</h5>
				<hr />
				<!-- 	<h5>
					
				</h5> -->
			</div>
		</div>

	</div>
		<!--  Jquery Table Start Here
    ++++++++++++++++++++++++++++++-->
		<div class="container">
			<div class="panel panel-primary">
				<div class="panel-heading">STUDENT DETAILS</div>
				<div class="panel-body">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="table-responsive">
										<table class="table table-striped table-bordered table-hover"
											>
											<thead>
												<tr>
												    <th>Roll No</th>
													<th>Admission No</th>
													<th>Name</th>
													<th>Father's Name</th>
													<th>Mother's Name</th>
													<th>Date Of Birth</th>
													<th>Caste</th>
													<th>Class</th>
													<th>Mobile No</th>
													<th>Date Of Joinee</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<%
														if (mydata != null && mydata.size() > 0) {
															for (int i = 0; i < mydata.size(); i++) {
																Student student = mydata.get(i);
													%>
													<td><%=student.getAdmissionNo()%></td>
													<td><%=student.getRollno()%></td>
													<td><%=student.getStudentFirstName() + " "
							+ student.getStudentLastName()%></td>
													
													<td><%=student.getStudentFatherName()%></td>
													<td><%=student.getStudentMotherName()%></td>
													<td><%=student.getDob()%></td>
													<td><%=student.getCaste()%></td>
													<td><%=student.getStudentClass()%></td>
													<td><%=student.getPhoneNumber()%></td>
													<td><%=student.getDoj()%></td>
													</tr>
												<%
													}
													}
												%>
											</tbody>

										</table>
									</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	<div class="row">
					<div class="col-md-12 ">
					 <table class="table"  ><tr><th align="left"></th><th></th><th align="center"><input id="printpagebutton" type="button" class="" value="Print this page" onclick="printpage()" /></th><th></th><th align="right"><a id = "backButton" href="dashboard.do" class="btn btn-default">Back</a></th></tr></table>
			</div>
</div>

	<footer id="footer-sec" class="footer">
		<div class="bottom-bar">
			<div class="container">
				<div class="row">
					<a class="copyright col-md-12 col-sm-12 col-xs-12"> Sri
						Narayana Olympiad Schools © 2015 All rights reserved. </a>
				</div>
			</div>
		</div>
	</footer>

	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.js"></script>
	<script src="resources/js/dataTables/jquery.dataTables.js"></script>
	<script src="resources/js/dataTables/dataTables.bootstrap.js"></script>

	<script>
		$(document).ready(function() {
			$('#dataTables-example').dataTable();
		});
	</script>

</body>
</html>