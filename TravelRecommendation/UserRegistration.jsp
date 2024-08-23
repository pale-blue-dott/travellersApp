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
					<ul class="nav navbar-nav navbar-right custom-menu">
						<li class="active"><a href="Home.jsp"><b>Home</b></a></li>
						<li><a href="UserLogin.jsp"><b>User</b></a></li>
						<li><a href="AdminLogin.jsp"><b>Admin</b></a></li>
									
					</ul>
				</div>
			</div>
		</nav>


		<section id="contact">
			<div class="container"> 
				<div class="row">
					<div class="col-md-12">
						<div class="col-lg-12">
							<div class="text-center color-elements">
							<h2><b>User Registration</b></h2>
							
							<p>If you have registered user <a href="UserLogin.jsp"> click Here ?</a></p>
							</div>
						</div>
						<div class="col-sm-offset-4 col-lg-6 ">
							<form class="inline" id="contactForm" action="UserRegistrationController" method="post" enctype="multipart/form-data">
								<div class="row">
								
									<div class="col-sm-8 height-contact-element">
										<div class="form-group">
											<input type="text" name="name" required pattern="[a-zA-Z\s]+" title="Enter Your Name(eg.abc)" class="form-control custom-labels"  placeholder="Name" />
										</div>
									</div>
									
									
									
									<div class="col-sm-8 height-contact-element">
										<div class="form-group">
											<input type="text" name="address" class="form-control custom-labels" title="Enter Your Address" required="required" placeholder="Address" />
										</div>
									</div>
									
									<div class="col-sm-8 height-contact-element">
										<div class="form-group">
											<input type="text" name="email" class="form-control custom-labels" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Email-Id must be valid format." required="required" placeholder="Email" />
										</div>
									</div>
									<div class="col-sm-8 height-contact-element">
										<div class="form-group">
											<input type="text" name="mobileno" class="form-control custom-labels"  required pattern="[7-9]{1}[0-9]{9}" title="Mobile number must be starts with 7, 8 or 9 digit and total number of digits are 10" placeholder="Contact No" />
										</div>
									</div>
									<div class="col-sm-8 height-contact-element">
										<div class="form-group">
											<input type="date" name="dob" class="form-control custom-labels" pattern="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d" title="Date should be month-day-year format (ex. 03/22/1990)" required="required" placeholder="Date of Birth" />
										</div>
									</div>
									<div class="col-sm-8 height-contact-element">
										<div class="form-group">
											<input type="password" name="password" class="form-control custom-labels" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Password must contain at least 6 characters, including UPPER/lowercase and numbers." placeholder="Password" />
										</div>
									</div>
									
									
									<div class="col-sm-8 height-contact-element">
										<div class="form-group">
											<input type="file" name="file" class="form-control custom-labels" />
										</div>
									</div>
									
									
									<div class="col-sm-offset-1 col-xs-6 ">
										<div class="form-group">
											<input type="submit" class="btn btn-md btn-custom btn-noborder-radius" value="Submit"/>
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




