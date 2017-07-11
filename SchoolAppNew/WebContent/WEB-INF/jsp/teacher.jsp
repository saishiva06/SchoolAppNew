<%@page import="com.shiva.entity.Teacher"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
	List<Teacher> mydata = (List<Teacher>) request
			.getAttribute("teachersData");
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
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/img/favicon.ico">
<script type="text/javascript">
	function editTeacher(teacherId) {
		var f = document.form2;
		f.teacher_id.value = teacherId;
		f.method = "post";
		f.action = 'editTeacher.do';
		f.submit();
	}

	function deleteTeacher(teacherId) {
		var f = document.form2;
		f.teacher_id.value = teacherId;
		f.method = "post";
		f.action = 'deleteTeacher.do';
		f.submit();
	}
</script>
</head>
<body>
<jsp:include page="header.jsp" />


	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">TEACHER DETAILS</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<form name="SchoolInfo" action="#" id="add-student" method="post">
								<p>
									<a href="teacherRegistration.do" class="btn btn-primary" >Add
										Teacher</a>
								</p>
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>SNo</th>
												<th>Name</th>
												<th>Subject</th>
												<th>Experience</th>
												<th>Phone Number</th>
												<th>Address</th>
												<th>Edit</th>
												<th>Delete</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<%
													if (mydata != null && mydata.size() > 0) {
														for (int i = 0; i < mydata.size(); i++) {
															Teacher teacher = mydata.get(i);
												%>


												<td><%=i + 1%></td>
												<td><%=teacher.getFirstName() + " "
							+ teacher.getLastName()%></td>
												<td><%=teacher.getSubject()%></td>
												<td><%=teacher.getExp()%></td>
												<td><%=teacher.getPhoneNumber()%></td>
												<td><%=teacher.getVillage()%></td>

												<td><input type="button" name="edit" value="Edit"
													class="btn btn-primary"
													onclick="editTeacher('<%=teacher.getTeacherId()%>')" /></td>
												<td><input type="button" name="delete" value="Delete"
													class="btn btn-danger"
													onclick="deleteTeacher('<%=teacher.getTeacherId()%>')" /></td>
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
								<input type="hidden" name="teacher_id" value="">
							</form>
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
