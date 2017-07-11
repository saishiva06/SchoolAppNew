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
	function editStudent(sno) {
		var f = document.form2;
		f.sno.value = sno;
		f.method = "post";
		f.action = 'editStudent.do';
		f.submit();
	}
	function deleteStudent(sno) {
		var f = document.form2;
		f.sno.value = sno;
		f.method = "post";
		f.action = 'deleteStudent.do';
		f.submit();
	}
	function viewStudent(sno) {
		var f = document.form2;
		f.sno.value = sno;
		f.method = "post";
		f.action = 'viewStudent.do';
		f.submit();
	}
</script>
</head>

<body>
	<jsp:include page="header.jsp" />

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
												    <th>Roll No</th>
													<th>Name</th>
													<th>Class</th>
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
													<td><%=student.getRollno()%></td>
													<td><%=student.getStudentFirstName() + " "
							+ student.getStudentLastName()%></td>
													<td><%=student.getStudentClass()%></td>
													<td><%=student.getFees()%></td>
													<td><%=calculation.getFeePaid(student)%></td>
													<td><%=calculation.getDueFee(student)%></td>
													<td><input type="button" name="edit" value="Edit"
														class="btn btn-primary"
														onclick="editStudent('<%=student.getsNo()%>')" /></td>
													<td><input type="button" name="delete" value="Delete"
														class="btn btn-danger"
														onclick="deleteStudent('<%=student.getsNo()%>')" /></td>
													<%-- <td><button class="btn btn-primary btn-sm" onclick="editStudent('<%=student.getRollno()%>')" ><i class="fa fa-edit "></i> Edit</button></td>
				                        <td><button class="btn btn-danger btn-sm" onclick="deleteStudent('<%=student.getRollno()%>')"  ><i class="fa fa-pencil"></i> Delete</button></td>		 
								</tr>onclick="deleteStudent('<%=student.getRollno()%>')"/></td> --%>
													<td><input type="button" name="view" value="View"
														class="btn btn-success"
														onclick="viewStudent('<%=student.getsNo()%>')" /></td>

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
									<input type="hidden" name="sno" value="">
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