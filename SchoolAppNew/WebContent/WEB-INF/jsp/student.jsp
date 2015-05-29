<%@page import="com.shiva.entity.Student"%>
<%@page import="com.shiva.util.Calculation"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
	List<Student> mydata = (List<Student>) request
			.getAttribute("studentsData");
	Calculation calculation = new Calculation();
%>
<!DOCTYPE html>
<html>
<head>
<title>Sri Narayana Olympiad School</title>
<link type="text/css" href="resources/css/font-awesome.css"
	rel="stylesheet">
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/img/favicon.ico">
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="resources/css/style.css" />
<link href="resources/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />
<script type="text/javascript">
	function editStudent(rollno) {
		var f = document.form2;
		f.rollno.value = rollno;
		f.method = "post";
		f.action = 'editStudent.do';
		f.submit();
	}
	function deleteStudent(rollno) {
		var f = document.form2;
		f.rollno.value = rollno;
		f.method = "post";
		f.action = 'deleteStudent.do';
		f.submit();
	}
	function viewStudent(rollno) {
		var f = document.form2;
		f.rollno.value = rollno;
		f.method = "post";
		f.action = 'viewStudent.do';
		f.submit();
	}
</script>
</head>

<body>
	<div class="wrapper">
		<header class="header">
			<div class="header-main container">
				<h1 class="logo col-md-4 col-sm-4">
					<a href="index.do"><img id="logo"
						class="img-responsive img-inblock" src="assets/images/logo.png"
						alt="Logo"></a>
				</h1>
				<!--//logo-->



				<div class="info col-md-8 col-sm-8 marginTop30">
					<div class="col-md-12 col-sm-12  text-center">
						<ul class="menu-top ">
							<li class="divider"><a href="dashboard.do">Dashboard</a></li>
							<li><a href="logout.do">&nbsp Logout<i
									class="fa fa-power-off fa-lg"></i></a></li>
						</ul>
						<!--//menu-top-->
					</div>
					<div class="clearfix text-center"></div>
					<div class="contact col-md-12 col-sm-12">
						<div class=" pull-right">
							<p class="phone">
								<i class="fa fa-phone"></i>Call us | +91 - 9666644801 | +91 -
								8686172057
							</p>
							<p class="email">
								<i class="fa fa-envelope"></i><a href="#">narayanaolympiadschools@gmail.com</a>
							</p>
						</div>
					</div>
					<!--//contact-->
				</div>
				<!--//info-->

			</div>
			<!--//header-main-->
		</header>
		<!--//header-->

		<!-- ******NAV****** -->
		<nav class="main-nav" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button class="navbar-toggle" type="button" data-toggle="collapse"
						data-target="#navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!--//nav-toggle-->
				</div>
				<!--//navbar-header-->
				<div class="navbar-collapse collapse" id="navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="nav-item"><a href="dashboard.do">Home</a></li>
						<li class="nav-item"><a href="teacher.do">Teacher</a></li>
						<li class="nav-item active"><a href="#">Student</a></li>
						<li class="nav-item"><a href="feeDetails.do">Fee</a></li>
						<li class="nav-item"><a href="examResults.do">Examination</a></li>

					</ul>
					<!--//nav-->
					<!--  <ul class="nav navbar-nav navbar-right">
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="logout.do">Logout</a></li>
                      </ul> -->

				</div>
				<!--//navabr-collapse-->
			</div>
			<!--//container-->
		</nav>
		<!--//main-nav-->

		<!--  Jquery Table Start Here
    ++++++++++++++++++++++++++++++-->
		<div class="container">
			<div class="panel panel-primary">
				<div class="panel-heading">STUDENT DETAILS</div>
				<div class="panel-body">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<form name="SchoolInfo" action="addStudent.do" id="add-student"
									method="post">
									<p>
										<a href="studentRegistration.do" class="btn btn-primary">Add
											Student</a>
									</p>
									<div class="table-responsive">
										<table class="table table-striped table-bordered table-hover"
											id="dataTables-example">
											<thead>
												<tr>
													<th>Admission No</th>
													<th>Name</th>
													<th>Class</th>
													<th>Section</th>
													<th>Total Fee</th>
													<th>Paid Fee</th>
													<th>Due Fee</th>
													<th>Edit</th>
													<th>Delete</th>
													<th>View</th>
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
													<td><%=student.getStudentFirstName() + " "
							+ student.getStudentLastName()%></td>
													<td><%=student.getStudentClass()%></td>
													<td><%=student.getSection()%></td>
													<td><%=student.getFees()%></td>
													<td><%=calculation.getDueFee(student)%></td>
													<td><%=calculation.getFeePaid(student)%></td>
													<td><input type="button" name="edit" value="Edit"
														class="btn btn-primary"
														onclick="editStudent('<%=student.getRollno()%>')" /></td>
													<td><input type="button" name="delete" value="Delete"
														class="btn btn-danger"
														onclick="deleteStudent('<%=student.getRollno()%>')" /></td>
													<%-- <td><button class="btn btn-primary btn-sm" onclick="editStudent('<%=student.getRollno()%>')" ><i class="fa fa-edit "></i> Edit</button></td>
				                        <td><button class="btn btn-danger btn-sm" onclick="deleteStudent('<%=student.getRollno()%>')"  ><i class="fa fa-pencil"></i> Delete</button></td>		 
								</tr>onclick="deleteStudent('<%=student.getRollno()%>')"/></td> --%>
													<td><input type="button" name="view" value="View"
														class="btn btn-primary"
														onclick="viewStudent('<%=student.getRollno()%>')" /></td>

												</tr>
												<%
													}
													}
												%>
											</tbody>

										</table>
									</div>
								</form>
								<form name="form2" method="post" id="form2">
									<input type="hidden" name="rollno" value="">
								</form>
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