<%@page import="com.shiva.entity.ExamResults"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
	List<ExamResults> mydata = (List<ExamResults>) request.getAttribute("examResultsData");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>School Education</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="resources/styles/layout.css" type="text/css" />
<script type="text/javascript">
	
	function editExamResults(examResultsId){   	        	
		var f=document.form2;
		f.examResultsId.value = examResultsId;
	    f.method="post";
	    f.action='editExamResults.do';
	    f.submit();	
    }
	
	function deleteExamResults(examResultsId){   	        	
		var f=document.form2;
		f.examResultsId.value = examResultsId;
    	f.method="post";
    	f.action='deleteExamResults.do';
    	f.submit();	
    }
</script>
</head>
<body>
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <!-- <h1><a href="#">Sri Narayana Olympiod School</a></h1> -->
      <p><img src="resources/images/logo.jpg" alt="" /></p>
    </div>
    <div id="topnav">
      <ul>
        <li><a href="dashboard.do">Home</a></li>
        <li><a href="teacher.do">Teacher</a></li>
        <li><a href="student.do">Student</a></li>
         <li><a href="feeDetails.do">Fee Details</a></li>
        <li class="active"><a href="#">Examination Results</a></li>
        
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>

<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="homecontent">
   	<h2 align="center">Student Marks</h2>
		<fieldset>
			<table>
                <tr>
				<td align="right"><label>Full Name*: </label>
					<input id="name" name="studentName" type="text" /></td>
					<td align="right"><label for="name">Roll Number*: </label></td>
					<td><input id="name" name="rollno" type="text" /></td>
				<td align="right"><label for="name">Class*: </label><select name="classs">
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
				</select></td><td align="right"><input name="Submit" type="submit"
						value="Submit" /><input name="clear" type="reset" value="Clear" /></td>
				
				</tr>
				
			</table> 
			
			<form name="schoolInfo" action="infoServlet" method="post">
         <a href="examResultsRegistration.do"><input type="button" name="add"
					value="Click Here to add new Exam Resluts"></input></a>
				<table>
                   <thead>
					<tr>
					    <th>Roll No</th>
						<th>Student Name</th>
						<th>Student Class</th>
						<th>Exam Title</th>
						<th>Exam Date</th>
						<th>Total Marks</th>
						<th>Scored Marks</th>
						<th>Rank</th>
						<th>Grade</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					</thead>
					<%
					if (mydata != null && mydata.size() > 0) {
						for (int i = 0; i < mydata.size(); i++) {
							ExamResults examResults = mydata.get(i);
				%>
				<tbody>
					<tr>
						<td><%=examResults.getRollNum()%></td>
						<td><%=examResults.getStudentName()%></td>
						<td><%=examResults.getStudentClass()%></td>
						<td><%=examResults.getExamTitle()%></td>
						<td><%=examResults.getExamDate()%></td>
						<td><%=examResults.getOthers()%></td>
						<td><%=examResults.getTotal()%></td>
						<td><%=examResults.getRank()%></td>
						<td><%=examResults.getGrade()%></td>
						<td><input type="button"
								name="edit" value="Edit" 
								onclick="editExamResults('<%=examResults.getExamResultsId()%>')"/></td>
						<td><input type="button"
								name="delete" value="Delete" 
								onclick="deleteExamResults('<%=examResults.getExamResultsId()%>')"/></td>
					</tr>
				</tbody>
				<%
					}
					}
				%>
			</table>
			</form>
			<form name="form2" method="post" id="form2">
			<input type="hidden" name="examResultsId" value="">
		</form>
	 </fieldset>
  </div>
</div>
<!-- ####################################################################################################### -->

  
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2015 - All Rights Reserved - Sri Narayana Olympiod School</p>
  </div>
</div>
<script type="text/javascript" src="resources/scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.cycle.min.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.cycle.setup.js"></script>
<script type="text/javascript" src="resources/scripts/jquery-1.7.1.min.js"></script> 
<script type="text/javascript" src="resources/scripts/jquery.validate.js"></script>
<script type="text/javascript" src="resources/scripts/bootstrap-datepicker.min.js"></script>  
<script type="text/javascript" src="resources/scripts/schoolscript.js"></script> 
</body>
</html>
