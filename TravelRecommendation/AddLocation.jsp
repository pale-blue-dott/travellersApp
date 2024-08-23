<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>Tourist Recommendation using Aspect based sentiment classification</title>
		<!-- Bootstrap Core CSS -->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet">
		<!-- Custom Fonts -->
		<link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		<!-- Custom CSS -->
		<link rel="stylesheet" href="assets/css/patros.css" >
		
	</head>

	<body data-spy="scroll">
		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul style="text-align:right">
				<li><b>Welcome Admin</b></li>
				</ul>
					<ul class="nav navbar-nav navbar-right custom-menu">
						<li><a href="AdminHome.jsp"><b>Home</b></a></li>
						<li><a href="ViewUsers.jsp"><b>View Users</b></a></li>
						<li class="active"><a href="AddLocation.jsp"><b>Add Location</b></a></li>
						<li><a href="AddReviews.jsp"><b>Add Reviews</b></a></li>	
						<li><a href="LocationDetails.jsp"><b>View Locations</b></a></li>
						<li><a href="LogoutController"><b>Logout</b></a></li>		
					</ul>
				</div>
			</div>
		</nav>


		<section id="contact">
			<div class="container"> 
				<div class="row">
					<div class="col-md-12">
						<div class="col-lg-12">
						<br><br>
							<div class="text-center color-elements">
							<h2><b>Add Location</b></h2>
							
							
							</div>
						</div>
						<div class="col-sm-offset-4 col-lg-6 ">
							<form class="inline" id="contactForm" action="AddLocationController" method="post" enctype="multipart/form-data">
								
								<div class="col-sm-8 height-contact-element">
								<div class="form-group">
										<select class="form-control custom-labels" name="loc" >
											<option style="background-color: black">Hotel</option>
											<option style="background-color: black">Place</option>
										</select>
									
									</div>
									</div>
									<div class="col-sm-8 height-contact-element">
										<div class="form-group">
											<input type="text" name="loc_name" class="form-control custom-labels" title="Enter Location Name(eg.Tajmahal)" placeholder="Location Name" />
										</div>
									</div>
									
									<div class="col-sm-8 height-contact-element">
										<div class="form-group">
											<input type="text" name="loc_type" class="form-control custom-labels" required pattern="[A-Za-z]+" title="Enter Location Type" required="required" placeholder="Location Type" />
										</div>
									</div>
									<div class="col-sm-8 height-contact-element">
										<div class="form-group">
											<input type="text" name="loc_address" class="form-control custom-labels" title="Enter Location Address"   placeholder="Location Address" />
										</div>
									</div>
									<div class="col-sm-8 height-contact-element">
										<div class="form-group">
											<input type="text" name="city" class="form-control custom-labels" required pattern="[A-Za-z]+" title="Enter Location City" required="required" placeholder="City" />
										</div>
									</div>
									<div class="col-sm-8 height-contact-element">
										<div class="form-group">
											<input type="text" name="country" class="form-control custom-labels" required pattern="[A-Za-z]+" title="Enter Location Country" required="required" placeholder="Country" />
										</div>
									</div>
									
									<div class="col-sm-8 height-contact-element">
										<div class="form-group">
											<input type="file" name="file" class="form-control custom-labels" title="Select Image File" placeholder = "Select Image File"/>
										</div>
									</div>
									<div class="col-sm-8 height-contact-element">
										<div class="form-group">
											<input type="text" name="lat" class="form-control custom-labels" required pattern="^-?[0-9]{1,3}(?:\.[0-9]{1,10})?$" title="Add Latitude"  placeholder="Latitude" />
										</div>
									</div>
									<div class="col-sm-8 height-contact-element">
										<div class="form-group">
											<input type="text" name="long" class="form-control custom-labels" required pattern="^-?[0-9]{1,3}(?:\.[0-9]{1,10})?$" title="Add Longitude"  placeholder="Longitude" />
										</div>
									</div>
									<div class="col-sm-offset-1 col-xs-6 ">
										<div class="form-group">
											<input type="submit" class="btn btn-md btn-custom btn-noborder-radius" value="Add Location"/>
										</div>
									</div>
									
									<div class="col-sm-3 col-xs-6 height-contact-element">
										<div class="form-group">
											<div id="response_holder"></div>
										</div>
									</div>
									<div class="col-sm-12 contact-msg">
									<div id="success"></div>
									</div>
								</div>
							</form>
						</div>
						
					</div>
				</div>
			</div>
		</section>

		<footer id="footer">
			<div class="container">
				<div class="row myfooter">
					<div class="col-sm-6"><div class="pull-left">
					© Copyright 2019-2020 | <a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a>
					</div></div>
					<div class="col-sm-6">
						<div class="pull-right">Designed by <a href="#">SKN Students</a></div>
					</div>
				</div>
			</div>
		</footer>

		<!-- jQuery -->
		<script src="assets/js/jquery.js"></script>
		<!-- Bootstrap Core JavaScript -->
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- Google Map -->
		<script src="//maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=true&amp;libraries=places"></script>

		<!-- Portfolio -->
		<script src="assets/js/jquery.quicksand.js"></script>	    
	

		



</body>
</html>




