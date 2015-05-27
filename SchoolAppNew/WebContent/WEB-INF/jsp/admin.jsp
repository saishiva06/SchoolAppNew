<!DOCTYPE html>
<html>
<head>
    <title>SRI NARAYANA OLYPIAD SCHOOL</title>
<link rel="stylesheet" href="resources/css/layout.css" type="text/css" />

    <link type="text/css" href="resources/css/font-awesome.css" rel="stylesheet"/>
    <link type="text/css" rel="stylesheet" href="resources/css/style.css" />
     <link rel="icon" type="image/png" sizes="16x16" href="resources/img/favicon.ico">
</head>
<body>
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
                         <li class="nav-item active" ><a href="#">Admin</a></li>
                    </ul><!--//nav-->
                     <!--  <ul class="nav navbar-nav navbar-right">
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="logout.do">Logout</a></li>
                      </ul> -->
                     
                </div><!--//navabr-collapse-->
            </div><!--//container-->
        </nav><!--//main-nav-->   
<div class="wrapper col2">
  <div id="topbar">
    <div id="">
      <div class="topbox">
       <div class="imgholder"><img src="resources/img/image.jpg" alt="" /></div>
      </div>
      <div class="topbox">
        <!-- <h2>Sri Narayana Educational System</h2>
        <p>Established in 2003 in Khammam.</p>
        <p class="readmore">Content will be Coming Soon!</p>
       --></div> 
      <div class="topbox last">
        <h2>Administration Login Here</h2>
        <form action="login.do" method="post">
          <fieldset>
            <legend>Administration Login Form</legend>
           <label for="teachername">UserName:
              <input type="text" name="teachername" id="teachername" value="" />
            </label>
            <label for="teacherpass">Password:
              <input type="password" name="teacherpass" id="teacherpass" value="" />
            </label>
            <label for="teacherremember">
              <input class="checkbox" type="checkbox" 
						name="teacherremember" id="teacherremember" checked="checked" /> Remember me</label>
            <p>
              <input type="submit" name="teacherlogin" id="teacherlogin" value="Login" />
              &nbsp;
              <input type="reset" name="adminreset" id="adminreset" value="Reset" />
         
            </p>
          </fieldset>
        </form>
      </div>
      <br class="clear" />
    </div>
    
    <br class="clear" />
  </div>
</div>
<div class="content container">
            <div class="page-wrapper">
                <header class="page-heading clearfix">
                    <h1 class="heading-title pull-left">Admin Login</h1>
                    <div class="breadcrumbs pull-right">
                        <ul class="breadcrumbs-list">
                            <li class="breadcrumbs-label">You are here:</li>
                            <li><a href="index.html">Home</a><i class="fa fa-angle-right"></i></li>
                            <li class="current">Admin Login</li>
                        </ul>
                    </div><!--//breadcrumbs-->
                </header> 
                <div class="page-content">
                    <div class="row">
                        <article class="contact-form col-md-8 col-sm-7  page-row">                            
                               <form action="login.do" method="post">
                                <div class="form-group name">
                                    <label for="name">UserName</label>
                                    <input    name="teachername" id="teachername"  type="text" class="form-control" placeholder="Enter your username">
                                </div><!--//form-group-->
                                <div class="form-group email">
                                    <label for="email">Password<span class="required">*</span></label>
                                    <input name="teacherpass" id="teacherpass" type="password" class="form-control" placeholder="Enter your password">
                                </div><!--//form-group-->
                                
                                <button type="submit" class="btn btn-theme">Submit</button>
                            </form>                  
                        </article><!--//contact-form-->
                        <aside class="page-sidebar  col-md-3 col-md-offset-1 col-sm-4 col-sm-offset-1">
                            <section class="widget has-divider">
                                <h3 class="title">Download Prospectus</h3>
                                <p>Donec pulvinar arcu lacus, vel aliquam libero scelerisque a. Cras mi tellus, vulputate eu eleifend at, consectetur fringilla lacus. Nulla ut purus.</p>
                                <a class="btn btn-theme" href="#"><i class="fa fa-download"></i>Download now</a>
                            </section><!--//widget-->   
                            
                            <section class="widget has-divider">
                                <h3 class="title">Postal Address</h3>
                                <p class="adr">
                                    <span class="adr-group">
                                    	<span><b>Narayana Olympiad Schools</b></span><br>       
                                        <span class="street-address">Saradha High School</span><br>
                                        <span class="region">Mustafa Nagar Khammam(District)</span><br>
                                        <span class="postal-code">Telangana-507208</span><br>
                                        <span class="country-name">India</span>

                                    </span>
                                </p>
                            </section><!--//widget-->     
                            
                            <section class="widget">
                                <h3 class="title">All Enquiries</h3>
                                <p class="tel"><i class="fa fa-phone"></i>9666644801 (or) 8686172057</p>
                                <p class="email"><i class="fa fa-envelope"></i> <a href="#">saradhahighschool@gmail.com</a></p>
                            </section>   
                        </aside><!--//page-sidebar-->
                    </div><!--//page-row-->
                </div><!--//page-content-->
            </div><!--//page-wrapper--> 
        </div><!--//content-->

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

<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="resources/js/jquery.cycle.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.cycle.setup.js"></script>
<script type="text/javascript" src="resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="resources/js/bootstrap-datepicker.min.js"></script>  
<script type="text/javascript" src="resources/js/schoolscript.js"></script> 
</body>
</html>
