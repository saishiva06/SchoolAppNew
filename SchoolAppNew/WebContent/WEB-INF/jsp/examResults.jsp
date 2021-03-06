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
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/img/favicon.ico">
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
		var x = confirm("Are you sure you want to delete?");
		if(x) {
		f.method = "post";
		f.action = 'deleteExamResults.do';
		f.submit();
		}
	}
	
	function sendResultsSms(examResultsId) {
		var f = document.form2;
		f.examResultsId.value = examResultsId;
		f.method = "post";
		f.action = 'sendResultsSms.do';
		f.submit();
	}
	function viewExamResults(examResultsId) {
		var f = document.form2;
		f.examResultsId.value = examResultsId;
		f.method = "post";
		f.action = 'viewExamResults.do';
		f.submit();
	}
</script>
</head>
<body>
<jsp:include page="header.jsp" />
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">EXAMINATION RESULTS</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<form name="SchoolInfo" action="#" id="add-student" method="post">
								
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>Roll No</th>
												<th>Student Name</th>
												<th>Student Class</th>
												<th>Exam Title</th>
												<th>Total Marks</th>
												<th>Scored Marks</th>
												<th>Rank</th>
												<th>Grade</th>
												<th>Edit</th>
												<th>Delete</th>
												<th>View</th>
												<th>Send Alert</th>
											</tr>
										</thead>

										<tbody>
											<tr>
												<%
													if (mydata != null && mydata.size() > 0) {
														for (int i = 0; i < mydata.size(); i++) {
															ExamResults examResults = mydata.get(i);
												%>
												<td><%=examResults.getRollNum()%></td>
												<td><%=examResults.getStudentName()%></td>
												<td><%=examResults.getStudentClass()%></td>
												<td><%=examResults.getExamTitle()%></td>
												<td><%=examResults.getTotal()%></td>
												<td><%=calculation.getTotalMarks(examResults)%></td>
												<td><%=examResults.getRank()%></td>
												<td><%=examResults.getGrade()%></td>
												<td><input type="button" name="edit" value="Edit"
													class="btn btn-primary"
													onclick="editExamResults('<%=examResults.getExamResultsId()%>')" /></td>
												<td><input type="button" name="delete" value="Delete"
													class="btn btn-danger"
													onclick="deleteExamResults('<%=examResults.getExamResultsId()%>')" /></td>
                                  
											<td><input type="button" name="view" value="View"
													class="btn btn-success"
													onclick="viewExamResults('<%=examResults.getExamResultsId()%>')" /></td>
                               <td><input type="button" name="send" value="Send Marks"
													class="btn btn-warning"
													onclick="sendResultsSms('<%=examResults.getExamResultsId()%>')" /></td>

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
								<input type="hidden" name="examResultsId" value="">
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
						Narayana Olympiad Schools � 2015 All rights reserved. </a>
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
