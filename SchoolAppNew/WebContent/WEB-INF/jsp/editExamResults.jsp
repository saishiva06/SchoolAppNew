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
    <link type="text/css" rel="stylesheet" href="resources/css/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="resources/css/font-awesome.css" >
    <link rel="icon" type="image/png" sizes="16x16" href="resources/img/favicon.ico">
    <link type="text/css" rel="stylesheet" href="resources/css/style.css" />
    <link type="text/css" rel="stylesheet" href="resources/css/datepicker.min.css" />
    <link type="text/css" rel="stylesheet" href="resources/css/datepicker3.min.css" />
    <link type="text/css" rel="stylesheet" href="resources/css/formValidation.css"/>
</head>
<body>

	<div class="wrapper">
<header class="header">  
            <div class="header-main container">
                <h1 class="logo col-md-4 col-sm-4">
                    <a href="index.do"><img id="logo" class="img-responsive img-inblock" src="assets/images/logo.png" alt="Logo"></a>
                </h1><!--//logo-->


                
                <div class="info col-md-8 col-sm-8 marginTop30">
                	<div class="col-md-12 col-sm-12  text-center">
                        <ul class="menu-top ">
                            <li class="divider"><a href="index.do">Home</a></li>
                            <li class="divider"><a href="admin.do">Admin Login</a></li>
                            <li><a href="contact.do">Contact</a></li>
                        </ul><!--//menu-top-->
                    </div>
                    <div class="clearfix text-center"></div>
                    <div class="contact col-md-12 col-sm-12">
                    	<div class=" pull-right">
                            <p class="phone"><i class="fa fa-phone"></i>Call us | +91 - 9666644801 | +91 - 8686172057</p> 
                          <p class="email"><i class="fa fa-envelope"></i><a href="#">narayanaolympiadschools@gmail.com</a></p>
                      </div>
                    </div><!--//contact-->
                </div><!--//info-->
                
            </div><!--//header-main-->
        </header><!--//header-->
           </div>
        <!-- ******NAV****** -->
        <nav class="main-nav" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button><!--//nav-toggle-->
                </div><!--//navbar-header-->            
                <div class="navbar-collapse collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav">
                         <li class="nav-item" ><a href="dashboard.do">Home</a></li>
                         <li  class="nav-item"><a href="teacher.do">Teacher</a></li>
                         <li class="nav-item" ><a href="student.do">Student</a></li>
                         <li class="nav-item"><a href="feeDetails.do">Fee</a></li>
                         <li class="nav-item"><a href="examResults.do">Examination</a></li>
                        
                     </ul><!--//nav-->
                     <!--  <ul class="nav navbar-nav navbar-right">
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="logout.do">Logout</a></li>
                      </ul> -->
                     
                </div><!--//navabr-collapse-->
            </div><!--//container-->
        </nav><!--//main-nav-->   


     <div class="container">
                    <p>
                     <b>   <a href="examResults.do" class="btn btn-default">Back</a></b>
                    </p>
     </div>
     
     <div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Exam Result New Registration</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-8">


							<form action="updateExamResults.do" id="addResult" method="post"
								class="form-horizontal">
										 <input type="hidden" name="examResultsId" value="<%= examResults.getExamResultsId()%>" />
	
								<div class="form-group">
									<label class="col-sm-3 control-label">Full name</label>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="studentName" value = "<%=examResults.getStudentName() %>"
											name="studentName" placeholder="Student full name" readonly="readonly"/>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Roll No</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="rollno"  value = "<%=examResults.getRollNum() %>"
											name="rollno" placeholder="Roll No:" readonly="readonly"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Class</label>
									<div class="col-sm-5">
										<select name="StudentClass"  class="form-control" >
										 <option value = "<%=examResults.getStudentClass() %>" selected = "selected"><%=examResults.getStudentClass() %></option>
												<option value="lkg">lkg</option>
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
											<option value="SSC">SSC</option>
										</select>
									</div>
								</div>


								<div class="form-group">
									<label class="col-sm-3 control-label">Exam Title </label>
									<div class="col-sm-5">
										<input id="examTitle" class="form-control"  name="examTitle" type="text" value = "<%=examResults.getExamTitle() %>"  />
									</div>
								</div>
								<div class="form-group">

									<label class="col-sm-3 control-label">Exam Date</label>
									<div class="col-sm-5">
										<input id="datepicker"  class="form-control" name="examDate" type="text" value = "<%=examResults.getExamDate() %>"/>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Telugu-1</label>
									<div class="col-sm-5">
										<input id="telugu_1" class="form-control"  name="telugu_1" type="text" value = "<%=examResults.getTelugu1() %>"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Telugu-2</label>
									<div class="col-sm-5">
										<input id="telugu_2"  class="form-control" name="telugu_2" type="text" value = "<%=examResults.getTelugu2() %>" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Hindi-1</label>
									<div class="col-sm-5">
										<input id="hindi_1"  class="form-control" name="hindi_1" type="text" value = "<%=examResults.getHindi1() %>"  />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Hindi-2</label>
									<div class="col-sm-5">
										<input id="hindi_2" class="form-control"  name="hindi_2" type="text" value = "<%=examResults.getHindi2() %>"  />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">English-1</label>
									<div class="col-sm-5">
										<input id="english_1"  class="form-control" name="english_1" type="text"
										value = "<%=examResults.getEnglish1() %>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">English-2</label>
									<div class="col-sm-5">
										<input id="english_2"  class="form-control" name="english_2" type="text"
										value = "<%=examResults.getEnglish2() %>" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Maths-1</label>
									<div class="col-sm-5">
										<input id="maths_1"  class="form-control" name="maths_1" type="text" 
										value = "<%=examResults.getMaths1() %>"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Maths-2</label>
									<div class="col-sm-5">
										<input id="maths_2"  class="form-control" name="maths_2" type="text" 
										value = "<%=examResults.getMaths2() %>"/>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Science-1</label>
									<div class="col-sm-5">
										<input id="science_1"  class="form-control" name="science_1" type="text" 
										value = "<%=examResults.getScience1() %>"/>
									</div>
								</div>


								<div class="form-group">
									<label class="col-sm-3 control-label">Science-2</label>
									<div class="col-sm-5">
										<input id="science_2"  class="form-control" name="science_2" type="text"
										value = "<%=examResults.getScience2() %>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Social-1</label>
									<div class="col-sm-5">
										<input id="social_1"  class="form-control" name="social_1" type="text" 
										value = "<%=examResults.getSocial1() %>"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Social-2</label>
									<div class="col-sm-5">
										<input id="social_2"  class="form-control" name="social_2" type="text" 
										value = "<%=examResults.getSocial2() %>"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Computers</label>
									<div class="col-sm-5">
										<input id="computers"  class="form-control" name="computers" type="text"
										value = "<%=examResults.getComputers() %>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Arts</label>
									<div class="col-sm-5">
										<input id="arts" name="arts" class="form-control"  type="text"
										value = "<%=examResults.getArts() %>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Others</label>
									<div class="col-sm-5">
										<input id="others" name="others" class="form-control"  type="text" 
										value = "<%=examResults.getOthers() %>"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Total</label>
									<div class="col-sm-5">
										<input id="total" name="total" class="form-control"  type="text"
										value = "<%=examResults.getTotal() %>" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Grade</label>
									<div class="col-sm-5">
										<select name="grade" class="form-control" >
										<option value = "<%=examResults.getGrade() %>" selected = "selected"><%=examResults.getGrade() %></option>
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
										<input id="rank" name="rank" class="form-control"  type="text"
										value = "<%=examResults.getRank() %>"  />
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

   <footer id="footer-sec" class="footer">
    <div class="bottom-bar">
    	<div class="container">
    		<div class="row">
    			<a class="copyright col-md-12 col-sm-12 col-xs-12">
                   Sri Narayana Olympiad Schools © 2015 All rights reserved.
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
