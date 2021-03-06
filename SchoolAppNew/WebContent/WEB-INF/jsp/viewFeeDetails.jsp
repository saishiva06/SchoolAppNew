<%@page import="com.shiva.entity.FeeDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
FeeDetails feeDetails = (FeeDetails)request.getAttribute("feeDetails");

%>
<!DOCTYPE html>
<html>
<head>
<title>Sri Narayana Olympiad School</title>
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
		printButton.style.visibility = 'hidden';
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
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div align="right"></div>
				<!--   Basic Table  -->
				<div class="panel panel-default">
					<div class="panel-heading text-center">
						<b>FEE RECIEPT FORM</b>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th>Reciept No</th>
										<th><%=feeDetails.getRecieptNo()%></th>
										<th>Admission NO:</th>
										<th><%=feeDetails.getRollNo()%></th>
									</tr>
									<tr>
									<th>Student Name</th>
										<th><%=feeDetails.getStudentName()%></th>
										<th>Class</th>
										<th><%=feeDetails.getStudentClass()%></th>
										</tr>
									<tr>
									    <th>Fee Type</th>
										<th><%=feeDetails.getFeeType()%></th>
										<th> Paid Fee</th>
										<th><%=feeDetails.getOtherFee()%></th>
									</tr>
									<tr>
										<th>Date of Issue</th>
										<th><%=feeDetails.getFeePayDate1()%></th>
									<th></th>
										<th></th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>
				<br>
				<br>
				<div class="row">
					<div class="col-md-12 ">
					 <table class="table"  ><tr><th align="left">Parent Signature</th><th></th><th align="center"><input id="printpagebutton" type="button" class="" value="Print this page" onclick="printpage()" /></th><th></th><th align="right">Clerk Signature</th></tr></table>
					 
					<!--   <h4 align="left"><b>Parent Signature</b></h4>
						<h4 align="center"><input id="printpagebutton" type="button" value="Print this page" onclick="printpage()" /></h4>
		                <h4 align="right">
							<b>Principal Signature</b>
						</h4>
			 -->		</div>

				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<!-- <input id="printpagebutton" type="button" value="Print this page" 
			onclick="printpage()" />
		 --><div class="row">
			<div class="col-md-12">
				<hr />
				<p>
					Copyright &copy; Sri Narayana Olympiad School. <a
						data-toggle="modal" href="">Terms and Conditions</a>
				</p>
			</div>
		</div>
	</div>
	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.js"></script>
	<script src="resources/js/dataTables/jquery.dataTables.js"></script>
	<script src="resources/js/dataTables/dataTables.bootstrap.js"></script>
	<script src="resources/js/bootstrap-datepicker.min.js"></script>
	<script src="resources/js/formValidation.js"></script>
	<script src="resources/js/framework/bootstrap.js"></script>
	<script src="resources/js/schoolscript.js"></script>
</body>
</html>
