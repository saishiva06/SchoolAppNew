<%@page import="com.shiva.entity.BudgetDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>
<%
	BudgetDetails budgetDetails = (BudgetDetails) request.getAttribute("loanAmountDetails");
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
			<b> <a href="budgetDashboard.do" class="btn btn-default">Back</a></b>
		</p>
	</div>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Update Loan Amount</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-8">

							<form action="updateAmountDetails.do" id="updateLoanAmount" method="post"
								name="myform" class="form-horizontal">
								<input type="hidden" name="budgetId"
									value="<%= budgetDetails.getBudgetId()%>" />
                                	
								
								<div class="form-group">
									<label class="col-sm-3 control-label">Amount Type</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="expenseName"
											name="expenseName" value = "<%=budgetDetails.getBudgetName()%>" readonly="readonly" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Amount Updated By</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="expenseBy"
											name="expenseBy" value = "<%=budgetDetails.getBudgetBy()%>"/>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-sm-3 control-label">Total Amount</label>
									<div class="col-sm-5">
										<input type="number" class="form-control" id="expenseCost"
											name="expenseCost" value = "<%=budgetDetails.getBudgetCost()%>"/>
									</div>
								</div>
								
							<div class="form-group">
									<label class="col-sm-3 control-label">Other Notes</label>
									<div class="col-sm-5">
										<input id="other" name="other" class="form-control"
											type="text" placeholder="" value = "<%=budgetDetails.getOther()%>"/>
									</div>
								</div>

								<div class="form-group">
									<label class="col-xs-3 control-label">Date</label>
									<div class="col-xs-5 date">
										<div class="input-group input-append date" id="LoanDatePicker">
											<input type="text" class="form-control eDol" name="expenseDate"
												placeholder="01/01/2000" value = "<%=budgetDetails.getBudgetDate()%>"/> <span
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

