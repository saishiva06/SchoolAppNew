<!DOCTYPE html>
<html>
<head>
    <title>SRI NARAYANA OLYPIAD SCHOOL</title>
    <link type="text/css" rel="stylesheet" href="resources/css/bootstrap.css" />
    <link type="text/css" href="resources/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="resources/css/style.css" />
    <link rel="icon" type="image/png" sizes="16x16" href="resources/img/favicon.ico">
    <link href="resources/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
</head>
<body>
   <div class="wrapper">
<header class="header">  
            <div class="header-main container">
                <h1 class="logo col-md-4 col-sm-4">
                    <a href="index.html"><img id="logo" class="img-responsive img-inblock" src="assets/images/logo.png" alt="Logo"></a>
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
                         <li class="nav-item active" ><a href="#">Home</a></li>
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
    <div class="row">
        <div class="col-md-3">

            <img id="d1" src="resources/img/school-image1.jpg" />

            <div class="contenthover">
                <h3>Toper Student1</h3>
                <p>Shiva Kumar: Marks 599. </p>
                <p><a href="#" class="mybutton">More Details</a></p>
            </div>

        </div>

        <div class="col-md-3 col-md-offset-1">

            <img id="d2" src="resources/img/school-image.jpg" />

            <div class="contenthover">
                <h3>Awards</h3>
                <p>Best School Award </p>
                <p><a href="#" class="mybutton">More Details</a></p>
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
    
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>
  
</body>
</html>

   
