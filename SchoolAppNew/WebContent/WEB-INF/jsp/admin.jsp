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
<!-- Header -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <p><img src="resources/images/logo.jpg" alt="" />Sri Narayana Olympiod School</p>
    </div>
    <div id="topnav">
      <ul>
        <li ><a href="index.do">Home</a></li>
        <li class="active"><a href="#">Admin</a></li>
        <li><a href="noticeboard.do">NoticeBoard</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col2">
  <div id="topbar">
    <div id="">
      <div class="topbox">
       <div class="imgholder"><img src="resources/images/images.jpg" alt="" /></div>
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
</body>
</html>
