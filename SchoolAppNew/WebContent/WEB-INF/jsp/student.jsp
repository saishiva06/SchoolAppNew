<%@page import="com.shiva.entity.Student"%>
<%@page import="com.shiva.util.Calculation"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>

<%
	List<Student> mydata = (List<Student>) request.getAttribute("studentsData");
	Calculation calculation = new Calculation();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Sri Narayana Olympiad School</title>
    <link type="text/css" rel="stylesheet" href="resources/css/bootstrap.css" />
    <link type="text/css" href="resources/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="resources/css/style.css" />
    <link href="resources/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />

    <script type="text/javascript">

	function editStudent(rollno){
		var f=document.form2;
		f.rollno.value = rollno;
	    f.method="post";
	    f.action='editStudent.do';
	    f.submit();
    }

	function deleteStudent(rollno){
		var f=document.form2;
		f.rollno.value = rollno;
    	f.method="post";
    	f.action='deleteStudent.do';
    	f.submit();
    }


</script>
</head>

<body>

    <!-- Fixes Navigation Bar with drop down menu
    ======================================================-->
       <div class="navbar navbar-inner ">
        <div class="container">
             <div class="navbar-header">
                <button type="buttton" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="#" class="navbar-brand"><img  width="90px" height="80px"  src="resources/img/logo.jpg" class="logo" alt="Logo" ></img></a>
            </div>
            <div>
           <h2 class="well" > SRI NARAYANA OLYMPIAD SCHOOL </h2>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li ><a href="dashboard.do">Home</a></li>
                    <li><a href="teacher.do">Teacher</a></li>
                    <li class="active" ><a href="#">Student</a></li>
                     <li ><a href="feeDetails.do">Fee</a></li>
                    <li><a href="examResults.do">Examination</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="logout.do">Logout</a></li>
                </ul>
            </div>

        </div>
    </div>


    <!--  Jquery Table Start Here
    ++++++++++++++++++++++++++++++-->
<div class="container">
  	<div class="panel panel-primary">
      <div class="panel-heading">
    			Student
      </div>
      <div class="panel-body">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
            <form name="SchoolInfo" action="addStudent.do" id="add-student" method="post">
                     <p>
                        <a href="studentRegistration.do" class="btn btn-primary">Add Student</a>
                    </p>
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Roll No</th>
										<th>Name</th>
										<th>Class</th>
										<th>Section</th>
										<th>Total Fee</th>
										<th>Paid Fee</th>
										<th>Due Fee</th>
										<th>Edit</th>
										<th>Delete</th>
										<th>View</th>
                                    </tr>
					           </thead><%
										if (mydata != null && mydata.size() > 0) {
											for (int i = 0; i < mydata.size(); i++) {
												Student student = mydata.get(i);
									%>

                                <tbody>
			                        <tr>
										<td><%=student.getRollno()%></td>
										<td><%=student.getStudentFirstName() + " "
											+ student.getStudentLastName()%></td>
										<td><%=student.getStudentClass()%></td>
										<td><%=student.getSection()%></td>
										<td><%=student.getFees()%></td>
										<td><%=calculation.getDueFee(student)%></td>
										<td><%=calculation.getFeePaid(student)%></td>
									 <td><input type="button"
												name="edit" value="Edit" class="btn btn-primary"
												onclick="editStudent('<%=student.getRollno()%>')"/></td>
										<td><input type="button"
												name="delete" value="Delete" class="btn btn-danger"

												onclick="deleteStudent('<%=student.getRollno()%>')"/></td>
  										 <%-- <td><button class="btn btn-primary btn-sm" onclick="editStudent('<%=student.getRollno()%>')" ><i class="fa fa-edit "></i> Edit</button></td>
				                        <td><button class="btn btn-danger btn-sm" onclick="deleteStudent('<%=student.getRollno()%>')"  ><i class="fa fa-pencil"></i> Delete</button></td>		 
							 --%>	</tr>
=======
												onclick="deleteStudent('<%=student.getRollno()%>')"/></td> --%>
										<td><button class="btn btn-primary btn-sm" onclick="editStudent('<%=student.getRollno()%>')" ><i class="fa fa-edit "></i> Edit</button></td>
				                        <td><button class="btn btn-danger btn-sm" onclick="deleteStudent('<%=student.getRollno()%>')"  ><i class="fa fa-pencil"></i> Delete</button></td>		
								<td> <a data-toggle="modal" href="#myModal">View</a></td>
								</tr>
							</tbody>
							<%
								}
								}
							%>
                            </table>
                        </div>
           </form>
		   <form name="form2" method="post" id="form2">
			<input type="hidden" name="rollno" value="">
		   </form>
           </div>
          </div>
       </div>
      </div>
    </div>
   </div>
   
   <div class="modal fade" id="myModal" tabinex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4>Student Marks List</h4>
                            </div>
                            <div class="modal-body">
                              <div class="container">
      					<form action="addStudent.do"  id="addStudent" method="post" class="form-horizontal" >
								<div class="form-group">
									<label class="col-sm-3 control-label">Full name</label>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="studentFirstName" name="studentFirstName"
											placeholder="First name" />
									</div>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="studentLastName"   name="studentLastName"
											placeholder="Last name" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Father Name</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="studentFatherName" name="studentFatherName"
											placeholder="Father Name" />
									</div>
									</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Mother Name</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="studentMotherName" name="studentMotherName"
											placeholder="Mother name" />
									</div>
								</div>
                              <div class="form-group">
									<label class="col-sm-3 control-label">Gender</label>
									<div class="col-sm-6">
										<div class="radio">
											<label> <input type="radio" name="gender"
												value="male" /> Male
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="gender"
												value="female" /> Female
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-xs-3 control-label">Date Of Birth</label>
									<div class="col-xs-5 date">
										<div class="input-group input-append date"
											id="datePicker">
											<input type="text" class="form-control" name="studentDob"
											 placeholder="05/19/2015"  /> <span
												class="input-group-addon add-on"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>
									</div>
								</div>
					            <div class="form-group">
									<label class="col-sm-3 control-label">Class</label>
									<div class="col-sm-5">
										<select
										name="studentClass" class="form-control">
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
									<label class="col-sm-3 control-label">Medium</label>
									<div class="col-sm-5">
									  <select name="medium" class="form-control">
										<option value="English">English</option>
										<option value="Telugu">Telugu</option>
									</select>
								</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Section</label>
									<div class="col-sm-5">
										<select name="section" class="form-control">
										<option value="A">A</option>
										<option value="B">B</option>
										</select>
									</div>
								</div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div> 
                </div>
                </div>
  <!-- Footer and Modal
    ==========================-->
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <hr/>
                <p>Copyright &copy; Sri Narayana Olypiad School.
                    <a data-toggle="modal" href="#myModal">Terms and Conditions</a>
                </p>
            </div>
        </div>
    </div>

    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/bootstrap.js"></script>
    <script src="resources/js/dataTables/jquery.dataTables.js"></script>
    <script src="resources/js/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>
</body>
</html>
