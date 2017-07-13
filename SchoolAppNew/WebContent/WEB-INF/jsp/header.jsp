<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap.css" />
<link type="text/css" href="resources/css/font-awesome.css"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="resources/css/style.css" />
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/img/favicon.ico">
<link href="resources/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
$(function (){
    $('#navbar-collapse ul li a').each(function() {
        var path = window.location.href;
        var current = path.substring(path.lastIndexOf('/')+1);
        var url = $(this).attr('href');
         if(url == current){
        $(this).closest('li').addClass('active');
        };
    });         
});

</script>
</head>
<body>
<body>
	<div class="wrapper">
		<header class="header">
			<div class="header-main container">
				<h1 class="logo col-md-4 col-sm-4">
					<a href="dashboard.do"><img id="logo"
						class="img-responsive img-inblock" src="assets/images/logo.png"
						alt="Logo"></a>
				</h1>
				<!--//logo-->



				<div class="info col-md-8 col-sm-8 marginTop30">
					<div class="col-md-12 col-sm-12  text-center">
						<ul class="menu-top ">
							<li class="divider"><a href="dashboard.do">Dashboard</a></li>
							<li><a href="logout.do">&nbsp Logout<i
									class="fa fa-power-off fa-lg"></i></a></li>
						</ul>
						<!--//menu-top-->
					</div>
					<div class="clearfix text-center"></div>
					<div class="contact col-md-12 col-sm-12">
						<div class=" pull-right">
							<p class="phone">
								<i class="fa fa-phone"></i>Call us | 08742-231234 | +91-9666644801 | +91-8686172057
							</p>
							<p class="email">
								<i class="fa fa-envelope"></i><a href="#">srinarayanaolympiadschools@gmail.com</a>
							</p>
						</div>
					</div>
					<!--//contact-->
				</div>
				<!--//info-->

			</div>
			<!--//header-main-->
		</header>
		<!--//header-->
	</div>
	<!-- ******NAV****** -->
	<nav class="main-nav" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target="#navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!--//nav-toggle-->
			</div>
			<!--//navbar-header-->
			<div class="navbar-collapse collapse" id="navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="nav-item"><a href="dashboard.do">Dashboard</a></li>
					<li class="nav-item"><a href="teacher.do">Teacher</a></li>
					<li class="nav-item"><a href="student.do">Student</a></li>
					<li class="nav-item"><a href="feeDetails.do">Fee</a></li>
					<li class="nav-item dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown" data-delay="0"
							data-close-others="false" href="examResults.do">Examination <i
								class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu">
							   <li><a href="examResults.do" class="btn btn-primary">View Results</a></li>
							   <li><a href="examResultsReg123.do" class="btn btn-primary">Enter Results For 1 2 3 clasess</a></li>
								<li><a href="examResultsReg4567.do" class="btn btn-primary">Enter Results For 4 5 6 7 clasess</a></li>
							    <li><a href="examResultsRegistration.do" class="btn btn-primary">Enter Results For 8 9 10 clasess</a></li>
							   <li><a href="uploadFile.do" class="btn btn-primary">Upload File</a></li>
							   </ul></li>
                <li class="nav-item"><a href="budgetDashboard.do">Budget</a></li>
                <li class="nav-item dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown" data-delay="0"
							data-close-others="false" href="#">Settings <i
								class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="settings.do" class="btn btn-primary">Change Password</a></li>
								<li><a href="newsDynamic.do" class="btn btn-primary">Add News</a></li>
								<li><a href="addImages.do" class="btn btn-primary">Upload Images</a></li>
							    </ul></li>
							    </ul>
<!--//nav-->

			</div>
			<!--//navabr-collapse-->
		</div>
		<!--//container-->
	</nav>
	<!--//main-nav-->
</body>
</html>