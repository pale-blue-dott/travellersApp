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
				<li><b>Welcome<%response.setContentType("text/html");  
				 HttpSession sessio=request.getSession(true);  
	               if(session!=null){  
	               String name=(String)session.getAttribute("name");  
	                out.print(" "+name+""); }   %></b></li>
				</ul>
					<ul class="nav navbar-nav navbar-right custom-menu">
						<li><a href="UserHome.jsp"><b>Home</b></a></li>
						<li><a href="AspectSearch.jsp"><b>Search Aspect Based</b></a></li>
						<li class="active"><a href="SearchLocation.jsp"><b>Search Places</b></a></li>
						<li><a href="SearchLocation1.jsp"><b>Search Hotels</b></a></li>
						<!--<li><a href="FacebookToken.jsp"><b>Fetch Facebook Location</b></a></li>
						<li><a href="FBLocation.jsp"><b>Current Location From FB</b></a></li>-->
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
							<div class="text-center color-elements">
							<br><br><br><br>
							<h2><b>Search Places</b></h2>
							<br><br><br>
							
							</div>
						</div>
						<div class="col-sm-offset-4 col-lg-6 ">
							<form  id="contactForm" action="AttractiveLocation.jsp" method="post" >
								<div class="row">
									<div class="col-sm-8 height-contact-element">
										<div class="form-group">
											<input type="text" name="current" class="form-control custom-labels" id="name" placeholder="Enter Location To Search" />
											<p class="help-block text-danger"></p>
										</div>
									</div>
									<br>
									
									<div class="col-sm-offset-1 col-xs-6 ">
										
										
										
											<input type="submit" class="btn btn-md btn-custom btn-noborder-radius" value="Search"/>
											 
											
											<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
									
									</div>
									<br><br><br><br><br><br><br>
									
								
									
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
					� Copyright 2019-2020 | <a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a>
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




