<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN"
	dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Sri Narayana Olympiod School-Teacher Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="resources/styles/layout.css" type="text/css" />
</head>
<body>

	<!-- ****************-->
	<div class="wrapper col1">
		<div id="header">
			<div id="logo">
			
				<p>
					<img src="resources/images/logo.jpg" alt="" />
				</p>
			</div>
			<div id="topnav">
				<ul>
					<center>
						<li class="active">Student Registration</a></li>
					</center>
				</ul>
			</div>
			<br class="clear" />
		</div>
	</div>
	<!-- *************************** -->
<div class="row-fluid">
         <div class="span6 offset6">
    <div id="maincontent" class="span8"> 
      
      <form name="SchoolInfo" action="addStudent.do" id="add-student" method="post">
       
          <h1>Registration form </h1>
          <br/>
          
          <div class="form-control-group">
            <label class="control-label" for="name">First Name</label>
            <div class="controls">
              <input id="studentFirstName" name="studentFirstName" type="text" />
            </div>
          </div>
          
          <div class="form-control-group">
            <label class="control-label" for="name">Last Name</label>
            <div class="controls">
              <input id="studentLastName" name="studentLastName" type="text" />
            </div>
         </div>
		<div class="form-group">
			<label for="name">Select Class</label> 
			<select name="studentClass" class="form-control">
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
		<div class="form-group">
			<label for="name">Gender</label> 
			<select name="gender" class="form-control">
	     			<option value="male">Male</option>
					<option value="female">Female</option>
			</select> 
		</div>
		<div class="form-group">
			<label for="name">Section</label> 
			<select name="section" class="form-control">
	     			<option value="A">A</option>
					<option value="B">B</option>
			</select> 
		</div>
		<div class="form-group">
			<label for="name">Medium</label> 
			<select name="section" class="form-control">
	     			<option value="English">English</option>
					<option value="Telugu">Telugu</option>
			</select> 
		</div>
		<div class="form-control-group">
            <label class="control-label" for="name">Father's Name</label>
            <div class="controls">
              <input id="studentFatherName" name="studentFatherName" type="text" />
            </div>
         </div>
         <div class="form-control-group">
            <label class="control-label" for="name">Mother's Name</label>
            <div class="controls">
              <input id="studentMotherName" name="studentMotherName" type="text" />
            </div>
         </div>
		<div class="form-group">
        <label class="col-xs-3 control-label">Date</label>
        <div class="col-xs-5 date">
            <div class="input-group input-append date" id="datePicker">
                <input id="datepicker" name="studentDob" class="form-control"  type="text" />
                <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
            </div>
        </div>
        </div>
        <div class="form-control-group">
            <label class="control-label" for="name">Religion</label>
            <div class="controls">
              <input id="religion" name="religion"  type="text" />
            </div>
         </div>
         <div class="form-control-group">
            <label class="control-label" for="name">Caste</label>
            <div class="controls">
              <input id="caste" name="caste"  type="text" />
            </div>
         </div>
         <div class="form-control-group">
            <label class="control-label" for="name">Mobile No</label>
            <div class="controls">
              <input id="mobileNo" name="mobileNo"  type="text" />
            </div>
         </div>
        <div class="form-control-group">
            <label class="control-label" for="message">Address</label>
            <div class="controls">
              <textarea class="input-xlarge" id="village" name="village" rows="3"></textarea>
            </div>
        </div>
         <div class="form-control-group">
            <label class="control-label" for="name">Fee Pay</label>
            <div class="controls">
              <input id="fee" name="fee"  type="text" />
            </div>
         </div>
        
        <div class="form-group">
        <label class="col-xs-3 control-label">Joining Date</label>
        <div class="col-xs-5 date">
            <div class="input-group input-append date" id="datePicker">
                <input id="datepicker" name="dateOfJoinee" class="form-control"  type="text" />
                <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
            </div>
        </div>
       </div>
        <div class="form-group">
            <button type="submit" class="btn btn-success">Register</button>
            <button type="reset" class="btn">Cancel</button>
          </div>
        </form>
    </div>
    <!-- .span --> 
  </div>
  </div>


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

