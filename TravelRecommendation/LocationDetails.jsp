<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="java.sql.Connection"%>
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
						<li><a href="AddLocation.jsp"><b>Add Location</b></a></li>
						<li><a href="AddReviews.jsp"><b>Add Reviews</b></a></li>	
						<li class="active"><a href="LocationDetails.jsp"><b>View Locations</b></a></li>
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
							<h2><b>View Location Details</b></h2>
						<br><br>
							</div>
						</div>
						<div class="col-sm-offset-2 col-lg-6 ">
						 <form class="subscription-form">
                    <div style="margin-left:20px;margin-right:20px">
                    <table class="table table-bordered" style="color:black">
                    <!--  <tr class="danger" style="color:black">
                     <th>Location Id</th> 	
                     <th>Location Image</th>
                     <th>Location</th>
                    <th> Location Name</th>
                     <th>Location Type</th>
                     <th>Location Address</th>
                     <th>City</th>
                     <th>Country</th>
                     </tr> -->
                     <%
                     Connection con=DBConnection.getConnection();
                     Statement st=con.createStatement();
                     ResultSet rs=st.executeQuery("select * from tbl_location");
                     //while(rs.next())
                    	 if(rs.next() == false) {
                         	%>
                         	<h4 style="text-align:right;margin-right:70px"><b>No Locations Present</b></h4>
                         	<%
                          }
                    	 else{
                    		 int count=0;
                         	do{	 
                         	 if(count == 0) {
                    	 %>
                    	 <tr class="danger" style="color:black">
                     <th>Location Id</th> 	
                     <th>Location Image</th>
                     <th>Location</th>
                    <th> Location Name</th>
                     <th>Location Type</th>
                     <th>Location Address</th>
                     <th>City</th>
                     <th>Country</th>
                     </tr>
                     <%}%>
                    	 <TR>
                    	 <td style="color:white"><%=rs.getString(1) %></td>
                   <td><img alt="Profile Pic" class="img-rectangle" src="profilepic2.jsp?id=<%=rs.getInt(1) %>"  width="100px" height="80px"/></td> 
                    	 <td style="color:white"><%=rs.getString(2) %></td>
                    	 <td style="color:white"><%=rs.getString(3) %></td>
                    	 <td style="color:white"><%=rs.getString(4) %></td>
                    	 <td style="color:white"><%=rs.getString(5) %></td>
                    	 <td style="color:white"><%=rs.getString(6) %></td>
                    	 <td style="color:white"><%=rs.getString(7) %></td>
          <%-- 
                    	 <th><a href="UserStatusController?id=<%=rs.getInt(1)%>&status=<%=rs.getString(8)%>"><%=rs.getString(8)%></a></th>
                    	 <td><a href="UserDeleteController?id=<%=rs.getInt(1)%>"><b>Delete</b></a></td> --%>
                    	 </TR>
                    	 <%count++; }while(rs.next());} %> 
                    </table>
                    
                            
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




