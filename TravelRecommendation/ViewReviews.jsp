<!DOCTYPE html>
<%@page import="com.bean.AddLocationBean"%>
<%@page import="com.dao.UserDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page import="javax.servlet.http.HttpSession" %>
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
						<li><a href="SearchLocation.jsp"><b>Search Places</b></a></li>
						<li><a href="SearchLocation1.jsp"><b>Search Hotels</b></a></li>
						<!--<li><a href="FacebookToken.jsp"><b>Fetch Facebook Location</b></a></li>
						<li><a href="FBLocation.jsp"><b>Current Location From FB</b></a></li> -->
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
								<br><br><br>
							<h2><b>View Places</b></h2>
						<br><br>
							</div>
						</div>
						<div class="col-sm-offset-1 col-lg-10 ">
						   <form class="subscription-form">
						<div style="margin-left: 140px; margin-right: 140px">
							<table class="table table-bordered" style="color: black">
								<tr class="danger" style="color: black">
									<th>Location Id</th>
									<th>Location Name</th>
									<th>Review</th>
									<th>Review Sentiment</th>
									<th>Ranking</th>
									<th>Give Reviews</th>
								</tr>
								<%
									String id = request.getParameter("id");
									Connection con = DBConnection.getConnection();
									Statement st1 = con.createStatement();
									UserDao dao=new UserDao();
									
									AddLocationBean bean=dao.SelectLocationName(id);
									
									ResultSet rs1 = st1.executeQuery("select * from tbl_locationreview where locationid='" + id + "' ORDER BY ranking DESC");
									while (rs1.next()) {
								%>
								<TR>
									<td style="color:white"><%=rs1.getString(2)%></td>
									<td style="color:white"><%=bean.getLoc_name()%></td>
									<td style="color:white"><%=rs1.getString(3)%></td>
										<td style="color:white"><%=rs1.getString(4)%></td>
										<td style="color:white"><%=rs1.getString(7)%></td>
									<td><a
										href="GiveReviews.jsp?locationid=<%=rs1.getString(2)%>&locname=<%=bean.getLoc_name()%>"><b>Give Review</b></a></td>
								</TR>

								<%
									}
								%>

							</table>
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




