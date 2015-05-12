<%@page import="com.shiva.entity.FeeDetails"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
	List<FeeDetails> mydata = (List<FeeDetails>) request.getAttribute("feeDetailsData");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>School Education</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="resources/styles/layout.css" type="text/css" />
<script type="text/javascript" src="resources/scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.cycle.min.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.cycle.setup.js"></script>
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
         <li class="active"><a href="#">Fee Details</a></li>
        <li><a href="exams.do">Examination Results</a></li>
        
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>

<!-- ####################################################################################################### -->
<div>
		<h2 align="center">Fee Details</h2>
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

				<a href="feeRegistration.do"><input type="button" name="add"
					value="Click Here to add new Fee Registration"></input></a>
				<table>
                   <thead>
					<tr>
					  <th>Reciept No</th>
						<th>Roll No</th>
						<th>Name</th>
						<th>Class</th>
						<th>Total Fee</th>
						<th>Paid Fee</th>
						<th>Due Fee</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					</thead>
					<%
					if (mydata != null && mydata.size() > 0) {
						for (int i = 0; i < mydata.size(); i++) {
							FeeDetails feeDetails = mydata.get(i);
				%>
				<tbody>
					<tr>
					   <td><%=feeDetails.getRecieptNo()%></td>
						<td><%=feeDetails.getRollNo()%></td>
						<td><%=feeDetails.getStudentName()%></td>
						<td><%=feeDetails.getStudentClass()%></td>
						<td><%=feeDetails.getAdmissionFee()%></td>
						<td><%=feeDetails.getTutionFee()%></td>
						<td><%=feeDetails.getExamFee()%></td>
						<td><input type="button"
								name="edit" value="Edit" 
								onclick="editFeeDetails('<%=feeDetails.getRecieptNo()%>')"/></td>
						<td><input type="button"
								name="delete" value="Delete" 
								onclick="deleteFeeDetails('<%=feeDetails.getRecieptNo()%>')"/></td>
					</tr>
				</tbody>
				<%
					}
					}
				%>
			</table>
			</form>
		</fieldset>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - <a href="#">Sharadha Education</a></p>
     </div>
</div>
</body>
</html>
