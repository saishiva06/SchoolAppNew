<!DOCTYPE html>
<html>
<head>
    <title>SRI NARAYANA OLYPIAD SCHOOL</title>
<link rel="stylesheet" href="resources/css/layout.css" type="text/css" />

    <link type="text/css" href="resources/css/font-awesome.css" rel="stylesheet"/>
    <link type="text/css" rel="stylesheet" href="resources/css/style.css" />
</head>
<body>
<!-- Header -->
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
           <h2 class="well" > SRI NARAYANA OLYPIAD SCHOOL </h2>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li ><a href="index.do">Home</a></li>
                    <li class="active"><a href="#">Admin</a></li>
                    <li ><a href="noticeboard.do">Notice Board</a></li>
                    <li ><a href="">Contact Us</a></li>
                </ul>
               
            </div>
            
        </div>
    </div>
<div class="wrapper col2">
  <div id="topbar">
    <div id="">
      <div class="topbox">
       <div class="imgholder"><img src="resources/img/images.jpg" alt="" /></div>
      </div>
      <div class="topbox">
        <h2>Sri Narayana Educational System</h2>
        <p>Established in 2003 in Khammam.</p>
        <p class="readmore">Content will be Coming Soon!</p>
      </div>
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


<div class="wrapper col4">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2015 - All Rights Reserved - Sri Narayana Olympiod School</p>
  </div>
</div>

<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="resources/js/jquery.cycle.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.cycle.setup.js"></script>
<script type="text/javascript" src="resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="resources/js/bootstrap-datepicker.min.js"></script>  
<script type="text/javascript" src="resources/js/schoolscript.js"></script> 
</body>
</html>
