<%@page import="com.shiva.entity.Teacher"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
	List<Teacher> mydata = (List<Teacher>) request
			.getAttribute("teachersData");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN"
	dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>School Education-Fee Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="resources/styles/layout.css"
	type="text/css" />
	<script type="text/javascript">
	
	function editTeacher(teacherId){   	        	
		var f=document.form2;
		f.teacher_id.value = teacherId;
	    f.method="post";
	    f.action='editTeacher.do';
	    f.submit();	
    }
	
	function deleteTeacher(teacherId){   	        	
		var f=document.form2;
		f.teacher_id.value = teacherId;
    	f.method="post";
    	f.action='deleteTeacher.do';
    	f.submit();	
    }


</script>
</head>
<body>

	<!-- -->
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
					<ul>
						<li><a href="dashboard.do">Home</a></li>
						<li class="active"><a href="#">Teacher</a></li>
						<li><a href="student.do">Student</a></li>
						<li><a href="feeDetails.do">Fee Details</a></li>
						<li><a href="examResults.do">Examination Results</a></li>

					</ul>

				</ul>
			</div>
			<br class="clear" />
		</div>
	</div>
	<!-- -->

	<fieldset>
		<form name="form1" action="" method="post">

			<a href="teacherRegistration.do"><input type="button" name="add"
				value="Add Teacher"></input></a>
			<table>
				<thead>
					<tr>
						<th>SNo</th>
						<th>Name</th>
						<th>Subject</th>
						<th>Experience</th>
						<th>Phone Number</th>
						<th>Address</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
				</thead>
				<%
					if (mydata != null && mydata.size() > 0) {
						for (int i = 0; i < mydata.size(); i++) {
							Teacher teacher = mydata.get(i);
				%>
				<tbody>
					<tr>
						<td><%=i + 1%></td>
						<td><%=teacher.getFirstName() + " "
							+ teacher.getLastName()%></td>
						<td><%=teacher.getSubject()%></td>
						<td><%=teacher.getExp()%></td>
						<td><%=teacher.getPhoneNumber()%></td>
						<td><%=teacher.getVillage()%></td>
						<td><input type="button"
								name="edit" value="Edit" 
								onclick="editTeacher('<%=teacher.getTeacherId()%>')"/></td>
						<td><input type="button"
								name="delete" value="Delete" 
								onclick="deleteTeacher('<%=teacher.getTeacherId()%>')"/></td>
					</tr>
				</tbody>
				<%
					}
					}
				%>
			</table>
		</form>
		<form name="form2" method="post" id="form2">
			<input type="hidden" name="teacher_id" value="">
		</form>
	</fieldset>


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
