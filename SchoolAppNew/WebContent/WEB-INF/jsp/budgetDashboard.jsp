<%@page import="com.shiva.entity.BudgetDetails"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
	String totalFunds = (String) request.getAttribute("totalFunds");
	String availableLimit = (String) request
			.getAttribute("availableLimit");
	String totalLoans = (String) request.getAttribute("totalLoans");
	String totalExpenses = (String) request
			.getAttribute("totalExpenses");
	List<BudgetDetails> latestExpensesData = (List<BudgetDetails>) request
			.getAttribute("recentDetailsList");
	List<BudgetDetails> topExpensesData = (List<BudgetDetails>) request
			.getAttribute("topDetailsList");
%>
<!DOCTYPE html>
<html>
<head>
<title>SRI NARAYANA OLYPIAD SCHOOL</title>
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
	function deletebudgetDetails2(budgetId,amount) {
	    var f = document.form3;
		f.budgetId.value = budgetId;
		f.amount.value = amount;
		f.method = "post";
		f.action = 'deleteBudgetDetails.do';
		f.submit();
	}
	function viewBudgetDetails(budgetId) {
	    var f = document.form2;
	    window.alert(budgetId);
		f.budgetId.value = budgetId;
		f.method = "post";
		f.action = 'viewBudgetDetails.do';
		f.submit();
	}
	

	function deleteBudgetDetails(budgetId,amount) {
	 window.alert(budgetId);
	    window.alert(amount);
		var f = document.form2;
		f.budgetId.value = budgetId;
		f.amount.value = amount;
	    f.method = "post";
		f.action = 'deleteBudgetDetails.do';
		f.submit();
	}
</script>

</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container">
		<div class="panel panel-primary">
			<div class="row">
				<div class="col-md-12"></div>
				<div class="col-md-3 col-sm-12 col-xs-12">
					<div
						class="panel panel-primary text-center no-boder bg-color-green">
						<div class="panel-body">
							<i class="fa fa-inr fa-5x"></i>
							<h3><%=totalFunds%></h3>
						</div>
						<div class="panel-footer back-footer-green">Total School
							Funds</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-12 col-xs-12">
					<div class="panel panel-primary text-center no-boder bg-color-blue">
						<div class="panel-body">
							<i class="fa fa-inr fa-5x"></i>
							<h3><%=availableLimit%></h3>
						</div>
						<div class="panel-footer back-footer-blue">Available Limit</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-12 col-xs-12">
					<div class="panel panel-primary text-center no-boder bg-color-red">
						<div class="panel-body">
							<i class="fa fa-inr fa-5x"></i>
							<h3><%=totalExpenses%></h3>
						</div>
						<div class="panel-footer back-footer-red">Total Expenses</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-12 col-xs-12">
					<div
						class="panel panel-primary text-center no-boder bg-color-brown">
						<div class="panel-body">
							<i class="fa fa-inr fa-5x"></i>
							<h3><%=totalLoans%></h3>
						</div>
						<div class="panel-footer back-footer-brown">Total Amount Of
							Loans</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">LATEST 5 EXPENSES</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<form name="SchoolInfo" action="" id=""
								method="post">
								<p>
									<!-- <a href="loadNewExpense.do" class="btn btn-primary">Add New Expense</a>
									<a href="updateLoanAmount.do" class="btn btn-primary">Update Loan Amount</a>
									<a href="updateSchoolFunds.do" class="btn btn-primary">Update School Funds</a>
									<a href="updateAvailableLimit.do" class="btn btn-primary">Update Available Limit</a>
								 --></p>
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th>SNo</th>
												<th>Budget Name</th>
												<th>Cost</th>
												<th>Done By</th>
												<th>Budget Type</th>
												<th>Budget Date</th>
												<th>Delete</th>
												<th>View</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<%
													if (latestExpensesData != null && latestExpensesData.size() > 0) {
														for (int i = 0; i < latestExpensesData.size(); i++) {
															BudgetDetails budgetDetails = latestExpensesData.get(i);
												%>
												<td><%=i + 1%></td>
												<td><%=budgetDetails.getBudgetName().toUpperCase()%></td>
												<td><%=budgetDetails.getBudgetCost()%></td>
												<td><%=budgetDetails.getBudgetBy().toUpperCase()%></td>
												<td><%=budgetDetails.getBudgetType().toUpperCase()%></td>
												<td><%=budgetDetails.getBudgetDate()%></td>
												<td><input type="button" name="delete" value="Delete"
													class="btn btn-danger"
													onclick="deleteBudgetDetails('<%=budgetDetails.getBudgetId()%>', '<%=budgetDetails.getBudgetCost()%>')" /></td>
											<td><input type="button" name="view" value="View"
													class="btn btn-primary"
													onclick="viewBudgetDetails('<%=budgetDetails.getBudgetId()%>')" /></td>
											
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
								<input type="hidden" name="budgetId" value="">
								<input type="hidden" name="amount" value="">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">TOP 5 EXPENSES</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th>SNo</th>
											<th>Budget Name</th>
											<th>Cost</th>
											<th>Done By</th>
											<th>Budget Type</th>
											<th>Budget Date</th>
											<th>Delete</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<%
												if (topExpensesData != null && topExpensesData.size() > 0) {
													for (int i = 0; i < topExpensesData.size(); i++) {
														BudgetDetails budgetDetails = topExpensesData.get(i);
											%>
											<td><%=i + 1%></td>
											<td><%=budgetDetails.getBudgetName().toUpperCase()%></td>
											<td><%=budgetDetails.getBudgetCost()%></td>
											<td><%=budgetDetails.getBudgetBy().toUpperCase()%></td>
											<td><%=budgetDetails.getBudgetType().toUpperCase()%></td>
											<td><%=budgetDetails.getBudgetDate()%></td>
											<td><input type="button" name="delete" value="Delete"
												class="btn btn-danger"
												onclick="deletebudgetDetails2('<%=budgetDetails.getBudgetId()%>', '<%=budgetDetails.getBudgetCost()%>')" /></td>
										</tr>
										<%
											}
											}
										%>
									</tbody>

								</table>
							</div>
							 <form name="form3" method="post" id="form3">
								<input type="hidden" name="budgetId" value="">
								<input type="hidden" name="amount" value="">
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


