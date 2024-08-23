<!DOCTYPE html>
<%@page import="java.sql.PreparedStatement"%>
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
						<!-- <li><a href="FacebookToken.jsp"><b>Fetch Facebook Location</b></a></li>
						<li><a href="FBLocation.jsp"><b>Current Location From FB</b></a></li> -->
						<li><a href="LogoutController"><b>Logout</b></a></li>
					</ul>
				</div>
			</div>
			
		</nav>

 <%
    HttpSession ss=request.getSession();
    String email=(String)ss.getAttribute("email");
    String id1=request.getParameter("id");
    String sql="select rank from tbl_location where locationid='"+id1+"'";
    
    Connection con1=DBConnection.getConnection();
    
    PreparedStatement ps=con1.prepareStatement(sql);
   
    ResultSet rs1=ps.executeQuery();
    while(rs1.next())
    {
    	int count=rs1.getInt(1);
    	count=count+1;
    	
    	 String sql1="update tbl_location set rank='"+count+"' where locationid='"+id1+"'";
    	    ps=con1.prepareStatement(sql1);
    	    int index=ps.executeUpdate();
    	    if(index>0)
    	    {
    	    	System.out.println("enter count");
    	    }
    }
    %>

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
  <div style="margin-left:140px;margin-right:140px">
  <table class="table table-bordered" style="color:black">
   <%
   String current = request.getParameter("id");
   String name = request.getParameter("name");
   Connection con=DBConnection.getConnection();
   Statement st=con.createStatement();
   ResultSet rs=st.executeQuery("select * from tbl_location where locationid='"+current+"'");
  
   while(rs.next())
   {
	   %>
	   
	<TR>
  	<th><font color="#FFFF00">Image</font></th>
  	<td>
  	 <center><img src="postImage1.jsp?id=<%=rs.getInt(1)%>" width="40%" ></img></center>
  	</td>
  	</TR>
  	
  	 <TR >
  	<th>
  	<font color="#FFFF00">Location</font></th>
  	<td style="color:white"><%=rs.getString(2) %></td>
  	</TR>
  	
  	 <TR>
  	<th>
  	<font color="#FFFF00">Name</font></th>
  	<td style="color:white"><%=rs.getString(3) %></td>
  	</TR>
  	
  	 <TR>
  	<th>
  	<font color="#FFFF00">Type</font></th>
  	<td style="color:white"><%=rs.getString(4) %></td>
  	</TR>
  	
  	 <TR>
  	<th>
  	<font color="#FFFF00">Address</font></th>
  	<td style="color:white"><%=rs.getString(5) %></td>
  	</TR>
  	
  	 <TR>
  	<th><font color="#FFFF00">City</font></th>
  	<td style="color:white"><%=rs.getString(6) %></td>
  	</TR>
  	
  	 <TR>
  	<th><font color="#FFFF00">Country</font></th>
  	<td style="color:white"><%=rs.getString(7) %></td>
  	</TR>
  	
  	<TR>
  	<th><font color="#FFFF00">Rank </font> </th>
  	<td style="color:white"><%=rs.getString(10) %></td>
  	</TR>
  	
  	 <TR>
  	<th><font color="#FFFF00">View Reviews</font></th>
  	<td><a href="ViewReviews.jsp?id=<%=rs.getInt(1)%>">View Reviews</a></td>
  	</TR>
  	
  	<!--  <TR>
  	<th><font color="#FFFF00">Calculate Time and Distance</font></th>
  	<td><a href="SearchController?name=<%=name%>">Show Time and Distance</a></td>
  	</TR> -->
  	 
  	 <TR>
  	<th><font color="#FFFF00">See Map</font></th>
  	<td><a href="map.jsp">Show Map</a></td>
  	</TR>
  	


  <%} %> 
 
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




