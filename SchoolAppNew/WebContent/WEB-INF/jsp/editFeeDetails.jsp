<%@page import="com.shiva.entity.FeeDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
FeeDetails feeDetails = (FeeDetails)request.getAttribute("feeDetails");

%>
<!DOCTYPE html>
<html>
<head>
    <title>Sri Narayana Olypiad School</title>
    <link type="text/css" rel="stylesheet" href="resources/css/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="resources/css/font-awesome.css" >
    <link type="text/css" rel="stylesheet" href="resources/css/style.css" />
    <link rel="icon" type="image/png" sizes="16x16" href="resources/img/favicon.ico">
    <link type="text/css" rel="stylesheet" href="resources/css/datepicker.min.css" />
    <link type="text/css" rel="stylesheet" href="resources/css/datepicker3.min.css" />
    <link type="text/css" rel="stylesheet" href="resources/css/formValidation.css"/>
</head>
<body>

	<jsp:include page="header.jsp" />
	<div class="container">
		<p>
			<b> <a href="feeDetails.do" class="btn btn-default">Back</a></b>
		</p>
	</div>
	
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Edit Fee Details</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-8">

							<form action="updateFeeDetails.do" id="addFee" method="post"
								class="form-horizontal">
								 <input type="hidden" name="recieptNo" value="<%= feeDetails.getRecieptNo()%>">
								<div class="form-group">
									<label class="col-sm-3 control-label">Full name</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="studentName" value = "<%=feeDetails.getStudentName() %>"
											name="studentName"  readonly="readonly" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Admission No</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="rollno" value = "<%=feeDetails.getRollNo() %>"
											name="rollno"  readonly="readonly" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Class</label>
									<div class="col-sm-5">
										<select name="StudentClass" class="form-control" readonly="readonly">
										  <option value = "<%=feeDetails.getStudentClass() %>" selected = "selected"><%=feeDetails.getStudentClass() %></option>
											
										</select>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-sm-3 control-label">Fee Type</label>
									<div class="col-sm-5">
										<select name="feeType" class="form-control" >
										<option value = "<%=feeDetails.getFeeType() %>" selected = "selected"><%=feeDetails.getFeeType() %></option>
										    <option value="Admission Fee">Admission Fee</option>
											<option value="Tution Fee">Tution Fee</option>
											<option value="Exam Fee">Exam Fee</option>
											<option value="Transport Fee">Transport Fee</option>
											<option value="IIT Fee">IIT Fee</option>
											<option value="Other Fee">Other Fee</option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Fee Paid</label>
									<div class="col-sm-5">
										<input id="feePaid" name="feePaid"   class="form-control"  type="text"  value = "<%=feeDetails.getOtherFee() %>" />
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-xs-3 control-label">Fee Paid Date</label>
									<div class="col-xs-5 date">
										<div class="input-group input-append date" 	id="FeePaidDatePicker">
											<input type="text" class="form-control"  name="feepaidDate"  value = "<%=feeDetails.getFeePayDate1()%> "
											 placeholder="" /> <span
												class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>
									</div>
								</div>
							
								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-3">
										<button type="submit" class="btn btn-primary" name="signup"
											value="Sign up">Submit</button>
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
    			<a class="copyright col-md-12 col-sm-12 col-xs-12">
                   Sri Narayana Olympiad Schools � 2015 All rights reserved.
    			</a>
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

