<%@page import="com.shiva.entity.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
	List<Student> mydata = (List<Student>) request
			.getAttribute("studentsData");
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN"
	dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>School Education</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="resources/styles/layout.css" type="text/css" />
<script type="text/javascript" src="resources/scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.cycle.min.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.cycle.setup.js"></script>
<script type="text/javascript">
	
	function editStudent(studentId){   	        	
		var f=document.form2;
		f.student_id.value = studentId;
	    f.method="post";
	    f.action='editStudent.do';
	    f.submit();	
    }
	
	function deleteStudent(studentId){   	        	
		var f=document.form2;
		f.student_id.value = studentId;
    	f.method="post";
    	f.action='deleteStudent.do';
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
				<p>
					<img src="resources/images/logo.jpg" alt="" />
				</p>
			</div>
			<div id="topnav">
				<ul>
					<li><a href="dashboard.do">Home</a></li>
					<li><a href="student.do">Student</a></li>
					<li class="active"><a href="#">Student</a></li>
					<li><a href="feeDetails.do">Fee Details</a></li>
					<li><a href="exams.do">Examination Results</a></li>

				</ul>
			</div>
			<br class="clear" />
		</div>
	</div>

	<!-- ####################################################################################################### -->
<fieldset>

		<h2 align="center">Student Details</h2>

		<form name="schoolInfo" action="infoServlet" method="post">

			<a href="studentRegistration.do"><input type="button" name="add"
					value="Click Here to add new Student Registration"></input></a>	
					
					<table>
					<thead>
                      <tr>
						<th>Roll No</th>
						<th>Name</th>
						<th>Class</th>
						<th>Section</th>
						<th>Address</th>
						<th>Edit</th>
						</thead>
					<%
					if (mydata != null && mydata.size() > 0) {
						for (int i = 0; i < mydata.size(); i++) {
							Student student = mydata.get(i);
				%>
				<tbody>
					<tr>
						<td><%=i + 1%></td>
						<td><%=student.getStudentFirstName() + " "
							+ student.getStudentLastName()%></td>
						<td><%=student.getClass()%></td>
						<td><%=student.getSection()%></td>
						<td><%=student.getPhoneNumber()%></td>
						<td><%=student.getVillage()%></td>
						<td><input type="button"
								name="edit" value="Edit" 
								onclick="editStudent('<%=student.getRollno()%>')"/></td>
						<td><input type="button"
								name="delete" value="Delete" 
								onclick="deleteStudent('<%=student.getRollno()%>')"/></td>
					</tr>
				</tbody>
				<%
					}
					}
				%>
			</table>
		</form>
	</fieldset>
	
	<!-- ####################################################################################################### -->
	<div class="wrapper col5">
		<div id="copyright">
			<p class="fl_left">
				Copyright &copy; 2014 - All Rights Reserved - <a href="#">Sri Narayana Olympiod School
			</a>
			</p>
		</div>
	</div>
</body>
</html>
