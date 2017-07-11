<%@page import="com.shiva.entity.StudentByClass"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
	List<StudentByClass> mydata = (List<StudentByClass>) request.getAttribute("studentsData");
	int teacherCount = (Integer) request.getAttribute("teacherCount");
	int studentsCount = (Integer) request.getAttribute("studentsCount");
	int dueFee = (Integer) request.getAttribute("dueFee");
	String collectedFee = (String) request.getAttribute("collectedFee");
%>
<!DOCTYPE html>
<html>
<head>
<title>SRI NARAYANA OLYPIAD SCHOOL</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap.css" />
<link type="text/css" href="resources/css/font-awesome.css"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="resources/css/style.css" />
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/img/favicon.ico">
<link href="resources/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container">
		<div class="panel panel-primary">
			<div class="row">
				<div class="col-md-12"></div>
				<div class="col-md-3 col-sm-12 col-xs-12">
					<div
						class="panel panel-primary text-center no-boder bg-color-green">
						<div class="panel-body">
							<i class="fa fa-users fa-5x"></i>
							<h3><%=studentsCount%></h3>
						</div>
						<div class="panel-footer back-footer-green">Total No of
							Students</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-12 col-xs-12">
					<div class="panel panel-primary text-center no-boder bg-color-blue">
						<div class="panel-body">
							<i class="fa fa-users fa-5x"></i>
							<h3><%=teacherCount%></h3>
						</div>
						<div class="panel-footer back-footer-blue">Total No of
							Teachers</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-12 col-xs-12">
					<div class="panel panel-primary text-center no-boder bg-color-red">
						<div class="panel-body">
							<i class="fa fa-inr fa-5x"></i>
							<h3><%=collectedFee%></h3>
						</div>
						<div class="panel-footer back-footer-red">Total Fee
							Collected</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-12 col-xs-12">
					<div
						class="panel panel-primary text-center no-boder bg-color-brown">
						<div class="panel-body">
							<i class="fa fa-inr fa-5x"></i>
							<h3><%=dueFee%></h3>
						</div>
						<div class="panel-footer back-footer-brown">Total Due Fee</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">STUDENT DETAILS</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th>Total Number Of Students in School</th>
											<th><%=studentsCount%></th>
											<th><div class="container">
		<p>
			<b> <a href="viewAllStudents.do" class="btn btn-primary">Click Here To view All Students List</a></b>
		</p>
	</div></th>
										</tr>
										<tr>
											<th>Class</th>
											<th>Total Number Of Students</th>
											<th>Class</th>
											<th>Total Number Of Students</th>
										</tr>
									</thead>
									<tbody>
										<%
											if (mydata != null && mydata.size() > 0) {
												int i = 0;
												while (i < mydata.size()) {
													StudentByClass studentByClass = mydata.get(i);
										%>
										<tr>
											<td><%=studentByClass.getStudentClass()%></td>
											<td><%=studentByClass.getCount()%></td>
											<%
												i++;
														if (i < mydata.size()) {
															studentByClass = mydata.get(i);
											%>
											<td><%=studentByClass.getStudentClass()%></td>
											<td><%=studentByClass.getCount()%></td>
										</tr>
										<%
											} else {
										%>
										<td></td>
										<td></td>
										</tr>
										<%
											}
													i++;
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

	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">STAFF DETAILS</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th>Total Number Of Staff</th>
											<td><%=teacherCount%></td>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
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


