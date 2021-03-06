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
			<b> <a href="settings.do" class="btn btn-default">Back</a></b>
		</p>
	</div>
	<% if (successMsg != null && successMsg.length()!=0) { %>
	<h1><span style="margin:auto; display:table; color: red"><%= successMsg %></span></h1>
	<%} %>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Add News</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-8">

							<form action="addNews.do" id="addNews" method="post"
								 class="form-horizontal">
								
								
								<div class="form-group">
									<label class="col-sm-3 control-label">News HeadLine</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="news_headline"
											name="news_headline" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">News Description</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="news_desc"
											name="news_desc"/>
									</div>
								</div>
								
								
							<div class="form-group">
									<label class="col-sm-3 control-label">Other Notes</label>
									<div class="col-sm-5">
										<input id="other" name="other" class="form-control"
											type="text" placeholder=""/>
									</div>
								</div>

								<div class="form-group">
									<label class="col-xs-3 control-label">Date</label>
									<div class="col-xs-5 date">
										<div class="input-group input-append date" id="NewsDatePicker">
											<input type="text" class="form-control nDoe" name="newsDate"
												placeholder="01/01/2000" /> <span
												class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>
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
						Narayana Olympiad Schools � 2015 All rights reserved. </a>
				</div>
			</div>
		</div>
	</footer>

	<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
   <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
   <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
   <script src="resources/js/formValidation.js"></script>
	<script src="resources/js/bootstrap.js"></script>
	<script src="resources/js/dataTables/jquery.dataTables.js"></script>
	<script src="resources/js/dataTables/dataTables.bootstrap.js"></script>
	<script src="resources/js/bootstrap-datepicker.min.js"></script>
	<script src="resources/js/framework/bootstrap.js"></script>
	<script src="resources/js/schoolscript.js"></script>
	
	
</body>
</html>

