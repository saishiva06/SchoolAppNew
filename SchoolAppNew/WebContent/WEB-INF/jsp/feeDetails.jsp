<%@page import="com.shiva.entity.FeeDetails"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
	List<FeeDetails> mydata = (List<FeeDetails>) request
			.getAttribute("feeDetailsData");
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
	function editFeeDetails(recieptNo) {
		var f = document.form2;
		f.recieptNo.value = recieptNo;
		f.method = "post";
		f.action = 'editFeeDetails.do';
		f.submit();
	}

	function deleteFeeDetails(recieptNo,feePaid) {
	window.alert(recieptNo);
	window.alert(feePaid);
		var f = document.form2;
		f.recieptNo.value = recieptNo;
		f.feePaid.value = feePaid;
		f.method = "post";
		f.action = 'deleteFeeDetails.do';
		f.submit();
	}
	
	function viewFeeDetails(recieptNo) {
		var f = document.form2;
		f.recieptNo.value = recieptNo;
		f.method = "post";
		f.action = 'viewFeeDetails.do';
		f.submit();
	}
</script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">FEE DETAILS</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<form name="SchoolInfo" action="#" id="add-student" method="post">
								<p>
									<a href="feeRegistration.do" class="btn btn-primary">Add
										Fee Details</a>
								</p>
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>Reciept No</th>
												<th>Admission No</th>
												<th>Name</th>
												<th>Class</th>
												<th>Fee Type</th>
												<th>Paid Fee</th>
												<th>Paid Date</th>
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
															FeeDetails feeDetails = mydata.get(i);
												%>
												<td><%=feeDetails.getRecieptNo()%></td>
												<td><%=feeDetails.getRollNo()%></td>
												<td><%=feeDetails.getStudentName()%></td>
												<td><%=feeDetails.getStudentClass()%></td>
												<td><%=feeDetails.getFeeType()%></td>
												<td><%=feeDetails.getOtherFee()%></td>
												<td><%=feeDetails.getFeePayDate1()%></td>
												<td><input type="button" name="edit" value="Edit"
													class="btn btn-primary"
													onclick="editFeeDetails('<%=feeDetails.getRecieptNo()%>')" /></td>
												<td><input type="button" name="delete" value="Delete"
													class="btn btn-danger"
													onclick="deleteFeeDetails('<%=feeDetails.getRecieptNo()%>', '<%=feeDetails.getOtherFee()%>')" /></td>
											<td><input type="button" name="view" value="View"
														class="btn btn-success"
														onclick="viewFeeDetails('<%=feeDetails.getRecieptNo()%>')" /></td>
											
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
								<input type="hidden" name="recieptNo" value="">
								<input type="hidden" name="feePaid" value="">
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
