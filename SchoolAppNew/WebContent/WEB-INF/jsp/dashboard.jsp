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
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="teacher.do">Teacher</a></li>
                    <li ><a href="student.do">Student</a></li>
                    <li ><a href="feeDetails.do">Fee</a></li>
                    <li><a href="examResults.do">Examination</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="logout.do">Logout</a></li>
                </ul>
            </div>
            
        </div>
    </div>

<div class="container">
    <div class="row">
        <div class="col-md-3">

            <img id="d1" src="resources/img/school-image.jpg" />

            <div class="contenthover">
                <h3>Toper Student1</h3>
                <p>Shiva Kumar: Marks 599. </p>
                <p><a href="#" class="mybutton">More Details</a></p>
            </div>

        </div>

        <div class="col-md-3 col-md-offset-1">

            <img id="d2" src="resources/img/image.jpg" />

            <div class="contenthover">
                <h3>Awards</h3>
                <p>Best School Award </p>
                <p><a href="#" class="mybutton">More Details</a></p>
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
    <script src="resources/js/dataTables/contentHover.js"></script>
    <script src="resources/js/contentHover.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
                 $('#myToolTip').tooltip();
            
            $('#myPopOver').popover();

            $('#d1').contenthover({
                overlay_background:'#000',
                overlay_opacity:0.8
            });

            $('#d2').contenthover({
                effect:'slide',
                slide_speed:300,
                overlay_background:'#000',
                overlay_opacity:0.8
            });
            });
    </script>
     
   </body>
</html>
