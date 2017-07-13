<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"%>
<%
	String successMsg = (String) request.getAttribute("Msg");
%>


<!DOCTYPE html>
<html>
<head>
<title>Sri Narayana Olympiad School</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/font-awesome.css">
<link type="text/css" rel="stylesheet" href="resources/css/style.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/datepicker.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/datepicker3.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/formValidation.css" />
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/img/favicon.ico">

</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container">
		<p>
			<b> <a href="settings.do" class="btn btn-default">Back</a></b>
		</p>
	</div>
	<% if (successMsg != null && successMsg.length()!=0) { %>
	<h1><span style="margin:auto; display:table; color: red"><%= successMsg %></span></h1>
	<%} %>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Add Images</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">
						<div class="col-md-8">

							<form action="uploadimage.do" id="uploadimage" method="post"
								class="form-horizontal" enctype="multipart/form-data" >
								
								<div class="form-group">
									<label class="col-sm-3 control-label">Image View Page</label>
									<div class="col-sm-5">
										<select name="imagePage" class="form-control" id ="imagePage" onChange = "onSelect()">
											<option value="Choose One">Choose One</option>
											<option value="gallery">Gallery</option>
											<option value="slides">slides</option>
											<option value="team">team</option>
											<option value="about">About Page</option>
											<option value="gallery_thumb">Gallery Thumb</option>
											<option value="news">News</option>
										</select>
									</div>
								</div>
								
								
								<div class="form-group">
									<label class="col-sm-3 control-label">Image View Number</label>
									<div class="col-sm-5">
										<select name="imgviewNum" class="form-control" id ="imgviewNum">
										</select>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-sm-3 control-label">Upload Image*</label>
									<div class="col-sm-5">
										<input type="file" class="form-control" id="uploadFile" name="uploadFile" accept=""/>
									</div>
								</div>
								
						<div class="form-group">
									<div class="col-sm-9 col-sm-offset-3">
										<button type="submit" class="btn btn-primary" name="signup"
											value="Sign up">Submit</button>
											<button type="reset" class="btn btn-primary" name="reset"
											value="RESET">Clear</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer and Modal
    ==========================-->
	<footer id="footer-sec" class="footer">
		<div class="bottom-bar">
			<div class="container">
				<div class="row">
					<a class="copyright col-md-12 col-sm-12 col-xs-12"> Sri
						Narayana Olympiad Schools © 2015 All rights reserved. </a>
				</div>
			</div>
		</div>
	</footer>

	<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
   <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
   <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
   <script src="resources/js/formValidation.js"></script>
	<script src="resources/js/bootstrap.js"></script>
	<script src="resources/js/dataTables/jquery.dataTables.js"></script>
	<script src="resources/js/dataTables/dataTables.bootstrap.js"></script>
	<script src="resources/js/bootstrap-datepicker.min.js"></script>
	<script src="resources/js/framework/bootstrap.js"></script>
	<script src="resources/js/schoolscript.js"></script>
	
	<script type = "text/javascript">
	
	function onSelect() {
        var imagePage = $("#imagePage").val();
         var imagenumber = $("#imgviewNum").val();
          var options = "";
         var number = 0;
        if(imagePage == 'gallery') {
         number = 30;
        } else if (imagePage == 'slides') {
          number = 5;
        }  else if (imagePage == 'team') {
            number = 3;
        }  else if (imagePage == 'about') {
            number = 1;
        }  else if (imagePage == 'gallery_thumb') {
               number = 4;
        } else if (imagePage == 'news') {
               number = 5;
        }
        
        options += "<option>" + "Choose One" + "</option>";
        for (var i = 1; i <= number; i++) {
				options += "<option>" + i + "</option>";
            }
            document.getElementById("imgviewNum").innerHTML = options;							
		}
    </script>  
    <script type = "text/javascript"> 
    function isSupportedBrowser() {
    return window.File && window.FileReader && window.FileList && window.Image;
  }

   function getSelectedFile() {
    var fileInput = document.getElementById("uploadFile");
    var fileIsSelected = fileInput && fileInput.files && fileInput.files[0];
    if (fileIsSelected)
        return fileInput.files[0];
    else
        return false;
}
    function isGoodImage(file) {
    var deferred = jQuery.Deferred();
    var image = new Image();

    image.onload = function() {
        // Check if image is bad/invalid
        if (this.width + this.height === 0) {
            this.onerror();
            return;
        }

        // Check the image resolution
        if (this.width >= 400 && this.height >= 400) {
            deferred.resolve(true);
        } else {
            alert("The image resolution is too low.");
            deferred.resolve(false);
        }
    };

    image.onerror = function() {
        alert("Invalid image. Please select an image file.");
        deferred.resolve(false);
    }

    image.src = _URL.createObjectURL(file);

    return deferred.promise();
}

$("#addImages").submit(function(event) {
    var form = this;

    if (isSupportedBrowser()) {
        event.preventDefault(); //Stop the submit for now

        var file = getSelectedFile();
        if (!file) {
            alert("Please select an image file.");
            return;
        }

        isGoodImage(file).then(function(isGood) {
            if (isGood)
                form.submit();
        });
    }
}); 
    
 </script>    
</body>
</html>

