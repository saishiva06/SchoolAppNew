<%@page import="com.shiva.entity.ExamResults"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
ExamResults examResults = (ExamResults)request.getAttribute("examResults");

%>
<!DOCTYPE html>
<html>
<head>
<title>Sri Narayana Olympiad School</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/font-awesome.css">
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/img/favicon.ico">
<link type="text/css" rel="stylesheet" href="resources/css/style.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/datepicker.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/datepicker3.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/formValidation.css" />
</head>
<body>

	<jsp:include page="header.jsp" />


	<div class="container">
		<p>
			<b> <a href="examResults.do" class="btn btn-default">Back</a></b>
		</p>
	</div>

	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Edit Exam Results </div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-12">


							<form action="updateExamResults.do" id="addResult" method="post"
								class="form-horizontal">
								<div class="col-md-6">
								<input type="hidden" name="examResultsId"
									value="<%= examResults.getExamResultsId()%>" />
                                <div class="form-group">
									<label class="col-sm-3 control-label">Roll No</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="rollno"
											value="<%=examResults.getRollNum()%>" name="rollno"
											placeholder="Roll No:" readonly="readonly" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Class</label>
									<div class="col-sm-5">
										<select name="StudentClass" class="form-control"
											readonly="readonly">
											<option value="<%=examResults.getStudentClass()%>"
												selected="selected"><%=examResults.getStudentClass()%></option>
											<!-- <option value="lkg">lkg</option>
											<option value="ukg">ukg</option>
											<option value="1st class">1st class</option>
											<option value="2nd class">2nd class</option>
											<option value="3rd class">3rd class</option>
											<option value="4th class">4th class</option>
											<option value="5th class">5th class</option>
											<option value="6th class">6th class</option>
											<option value="7th class">7th class</option>
											<option value="8th class">8th class</option>
											<option value="9th class">9th class</option>
											<option value="SSC">SSC</option> -->
										</select>
									</div>
								</div>

                                   <div class="form-group">
									<label class="col-sm-3 control-label">Exam Title </label>
									<div class="col-sm-5">
										<select name="examTitle" class="form-control"
											required="required" readonly="readonly">
											<option value="<%=examResults.getExamTitle()%>"
												selected="selected"><%=examResults.getExamTitle()%></option>
											<option value="Slip Test">Slip Test</option>
											<option value="Weekly Test">Weekly Test</option>
											<option value="Monthly Test">Monthly Test</option>
											<option value="Unit Test">Unit Test</option>
											<option value="Quarterly Exams">Quarterly Exams</option>
											<option value="Half yearly Exams">Half yearly Exams</option>
											<option value="Pre Final Exams">Pre Final Exams</option>
											<option value="Final Exams">Final Exams</option>
											<option value="Other">Other</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Telugu</label>
									<div class="col-sm-5">
										<input id="telugu_1" class="form-control" name="telugu_1"
											type="text" value="<%=examResults.getTelugu1()%>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Hindi</label>
									<div class="col-sm-5">
										<input id="hindi_1" class="form-control" name="hindi_1"
											type="text" value="<%=examResults.getHindi1()%>"/>
									</div>
								</div>
								
								
								<div class="form-group">
									<label class="col-sm-3 control-label">English</label>
									<div class="col-sm-5">
										<input id="english_1" class="form-control" name="english_1"
											type="text" value="<%=examResults.getEnglish1()%>"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Maths</label>
									<div class="col-sm-5">
										<input id="maths_1" class="form-control" name="maths_1"
											type="text" value="<%=examResults.getMaths1()%>" />
									</div>
								</div>
								
								
                            <div class="form-group">
									<label class="col-sm-3 control-label">Science (EVS for Primary)</label>
									<div class="col-sm-5">
										<input id="science_1" class="form-control" name="science_1"
											type="text" value="<%=examResults.getScience1()%>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Biology (Optional)</label>
									<div class="col-sm-5">
										<input id="science_2" class="form-control" name="science_2"
											type="text" value="<%=examResults.getScience2()%>" />
									</div>
								</div>
								
                     <div class="form-group">
									<label class="col-sm-3 control-label">Social(Optional for Primary)</label>
									<div class="col-sm-5">
										<input id="social_1" class="form-control" name="social_1"
											type="text" value="<%=examResults.getSocial1()%>" />
									</div>
								</div>
                            
								</div>
								<div class="col-md-6">
								<div class="form-group">
									<label class="col-sm-3 control-label">Full name</label>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="studentName"
											value="<%=examResults.getStudentName()%>" name="studentName"
											placeholder="Student full name" readonly="readonly" />
									</div>
									
								</div>
								<div class="form-group">
                                        <label class="col-sm-3 control-label">Exam Date</label>
                                        <div class="col-xs-5 date">
                                        <div class="input-group input-append date" id="ExamDatePicker">
										<input type = "text" class="form-control" name="examDate" 
											type="text" value="<%=examResults.getExamDate()%>" /><span
												class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span></div>
									</div>
									</div>
								
								
								<div class="form-group">
									<label class="col-sm-3 control-label">G K(Only for Primary)</label>
									<div class="col-sm-5">
										<input id="arts" name="arts" class="form-control" type="text"
											value="<%=examResults.getArts()%>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Computers</label>
									<div class="col-sm-5">
										<input id="computers" class="form-control" name="computers"
											type="text" value="<%=examResults.getComputers()%>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Marks Obtained</label>
									<div class="col-sm-5">
										<input id="others" name="others" class="form-control"
											type="text" value="<%=examResults.getOthers()%>"
											onClick="fnSum();" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Total</label>
									<div class="col-sm-5">
										<input id="total" name="total" class="form-control"
											type="text" value="<%=examResults.getTotal()%>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Grade</label>
									<div class="col-sm-5">
										<select name="grade" class="form-control">
											<option value="<%=examResults.getGrade() %>"
												selected="selected"><%=examResults.getGrade() %></option>
											<option value="A">A</option>
											<option value="B">B</option>
											<option value="C">C</option>
											<option value="D">D</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Rank</label>
									<div class="col-sm-5">
										<input id="rank" name="rank" class="form-control" type="text"
											value="<%=examResults.getRank()%>" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-3">
										<button type="submit" class="btn btn-primary" name="signup"
											value="Sign up" onClick="fnSum();">Submit</button>
									</div>
								</div>
								</div>
                      </form>
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
	<script src="resources/js/bootstrap-datepicker.min.js"></script>
	<script src="resources/js/formValidation.js"></script>
	<script src="resources/js/framework/bootstrap.js"></script>
	<script src="resources/js/schoolscript.js"></script>
	<script type="text/javascript">
	
	$("#rollno").blur(function(){
        var rollno = $("#rollno").val();
	   
       $.ajax({
			type : "GET",
			url : "getStudentDetailsForRollNum.do",
			data : {
					"rollno" : rollno
				},
			success : function(result) {
						if(result) {
						 $("#studentName").val(result.studentFirstName +" " +result.studentLastName);
                         $("#StudentClass").val(result.studentClass);
                         } else {
                       $("#studentName").val("");
                        $("#StudentClass").val("");
                       }
                      },
			error : function(result) {
			         	$("#studentName").val("");
                        $("#StudentClass").val("");
                      }
		});
	});
	
	</script>

	<script type="text/javascript">
    function fnSum()
    {
     var num = [];
         num[0] = parseInt(document.getElementById("telugu_1").value);
         num[1] = parseInt(document.getElementById("hindi_1").value);
         num[2]  = parseInt(document.getElementById("english_1").value);
         num[3] = parseInt(document.getElementById("maths_1").value);
         num[4]  = parseInt(document.getElementById("science_1").value);
         num[5] = parseInt(document.getElementById("science_2").value);
         num[6] = parseInt(document.getElementById("social_1").value);
         num[7] = parseInt(document.getElementById("computers").value);
         num[8] = parseInt(document.getElementById("arts").value);
         
         var total = 0;
         for (i = 0; i <=8; i++) { 
         var check = isNaN(num[i]);
         if(!check) {
          total = total +  num[i];
           } 
         }
         document.getElementById("others").value = total;
    }
    </script>
</body>
</html>
