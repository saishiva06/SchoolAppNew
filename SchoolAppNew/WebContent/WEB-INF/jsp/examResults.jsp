<%@page import="com.shiva.entity.ExamResults"%>
<%@page import="com.shiva.util.Calculation"%>
<%@page import="com.shiva.util.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
	List<ExamResults> mydata = (List<ExamResults>) request
			.getAttribute("examResultsData");
	Calculation calculation = new Calculation();
%>
<!DOCTYPE html>
<html>
<head>
<title>Sri Narayana Olypiad School</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap.css" />
<link type="text/css" href="resources/css/font-awesome.css"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="resources/css/style.css" />
<link href="resources/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />
<script type="text/javascript">
	function editExamResults(examResultsId) {
		var f = document.form2;
		f.examResultsId.value = examResultsId;
		f.method = "post";
		f.action = 'editExamResults.do';
		f.submit();
	}

	function deleteExamResults(examResultsId) {
		var f = document.form2;
		f.examResultsId.value = examResultsId;
		f.method = "post";
		f.action = 'deleteExamResults.do';
		f.submit();
	}
</script>
</head>
<body>
	<!-- Fixes Navigation Bar with drop down menu
    ======================================================-->
	<div class="navbar navbar-inner ">
		<div class="container">
			<div class="navbar-header">
				<button type="buttton" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand"><img width="90px" height="80px"
					src="resources/img/logo.jpg" class="logo" alt="Logo"></img></a>
			</div>
			<div>
				<h2 class="well">SRI NARAYANA OLYPIAD SCHOOL</h2>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="dashboard.do">Home</a></li>
					<li><a href="teacher.do">Teacher</a></li>
					<li><a href="student.do">Student</a></li>
					<li><a href="feeDetails.do">Fee</a></li>
					<li class="active"><a href="#">Examination</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="logout.do">Logout</a></li>
				</ul>
			</div>

		</div>
	</div>

	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Student</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<form name="SchoolInfo" action="#" id="add-student" method="post">
								<p>
									<a href="examResultsRegistration.do" class="btn btn-primary">Add
										Exam Results</a>
								</p>
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>Roll No</th>
												<th>Student Name</th>
												<th>Student Class</th>
												<th>Exam Title</th>
												<th>Exam Date</th>
												<th>Total Marks</th>
												<th>Scored Marks</th>
												<th>Rank</th>
												<th>Grade</th>
												<th>Edit</th>
												<th>Delete</th>
											</tr>
										</thead>
										<%
											if (mydata != null && mydata.size() > 0) {
												for (int i = 0; i < mydata.size(); i++) {
													ExamResults examResults = mydata.get(i);
										%>
										<tbody>
											<tr>
												<td><%=examResults.getRollNum()%></td>
												<td><%=examResults.getStudentName()%></td>
												<td><%=examResults.getStudentClass()%></td>
												<td><%=examResults.getExamTitle()%></td>
												<td><%=examResults.getExamDate()%></td>
												<td><%=examResults.getTotal()%></td>
												<td><%=calculation.getTotalMarks(examResults)%></td>
												<td><%=examResults.getRank()%></td>
												<td><%=examResults.getGrade()%></td>
												<%-- <td><button class="btn btn-primary btn-sm" onclick="editExamResults('<%=examResults.getExamResultsId()%>')" ><i class="fa fa-edit "></i> Edit</button></td>
				        <td><button class="btn btn-danger btn-sm" onclick="deleteExamResults('<%=examResults.getExamResultsId()%>')"  ><i class="fa fa-pencil"></i> Delete</button></td>		
						 --%>
												<td><input type="button" name="edit" value="Edit"
													class="btn btn-primary"
													onclick="editExamResults('<%=examResults.getExamResultsId()%>')" /></td>
												<td><input type="button" name="delete" value="Delete"
													class="btn btn-danger"
													onclick="deleteExamResults('<%=examResults.getExamResultsId()%>')" /></td>

											</tr>
										</tbody>
										<%
											}
											}
										%>
									</table>
								</div>
							</form>
							<form name="form2" method="post" id="form2">
								<input type="hidden" name="examResultsId" value="">
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
				<hr />
				<p>
					Copyright &copy; Sri Narayana Olypiad School. <a
						data-toggle="modal" href="#myModal">Terms and Conditions</a>
				</p>
			</div>
		</div>
	</div>
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
