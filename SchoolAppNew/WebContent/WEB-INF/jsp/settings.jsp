<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>
<%
	String successMsg = (String) request.getAttribute("Msg");
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
<link type="text/css" rel="stylesheet"
	href="resources/css/datepicker.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/datepicker3.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/formValidation.css" />
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/img/favicon.ico">


</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container">
		<p>
			<b> <a href="dashboard.do" class="btn btn-default">Back</a></b>
		</p>
	</div>
	
	<% if (successMsg != null && successMsg.length()!=0) { %>
	<h1><span style="margin:auto; display:table; color: red"><%= successMsg %></span></h1>
	<%} %>
	
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Change Password</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
							<form action="changePassword.do" id="changePassword" method="post"
								class="form-horizontal">
								<div class="form-group">
									<label class="col-sm-3 control-label">Old Password*</label>
									<div class="col-sm-5">
										<input type="password" class="form-control" id="oldPassword"
											name="oldPassword"  placeholder="******"
											required="required" />
									</div>
									</div>
									<div class="form-group">
									<label class="col-sm-3 control-label">New Password*</label>
								   <div class="col-sm-5">
										<input type="password" class="form-control" id="newPassword"
											name="newPassword" placeholder="*****"
											required="required" />
									</div>
									</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Re Enter New Password*</label>
								   <div class="col-sm-5">
										<input type="password" class="form-control" id="newPassword1"
											name="newPassword1" placeholder="******"
											required="required" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-3">
										<button type="submit" class="btn btn-primary" name="signup"
											value="Sign up">Submit</button>
											<button type="reset" class="btn btn-primary" name="reset"
											value="RESET">Clear</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
		
	<!-- Footer and Modal
    ==========================-->
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
	<script src="resources/js/bootstrap-datepicker.min.js"></script>
	<script src="resources/js/formValidation.js"></script>
	<script src="resources/js/framework/bootstrap.js"></script>
	<script src="resources/js/schoolscript.js"></script>
	

</body>
</html>

