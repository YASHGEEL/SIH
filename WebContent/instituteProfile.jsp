<html>
<head>

<%@page import="java.util.List"%>
<%@page import="service.collegesignup"%>
<%@page import="entity.college_login"%>

<link rel="stylesheet" href="./css/bootstrap.min.css">

<style>
		body{padding-top:30px;}

.glyphicon {  margin-bottom: 10px;margin-right: 10px;}

small {
display: block;
line-height: 1.428571429;
color: #999;
}

p{
	font-size:15px;
}
</style>
</head>
<body background="./img/new-c.jpg">
				<div class="container"  >
					<div class="row">
						<div class="col-xs-6 col-xs-offset-3 ">
							<div class="well well-sm">
								<div class="row">
									<div class="col-sm-12 text-center">
										<% 
									    collegesignup cs = new collegesignup();	
									  String name = (String)session.getAttribute("c_uname");
							  		 List<college_login> collegeLG = cs.collegeprofile(name);
							  		for (college_login org : collegeLG) {
									%>
									
										<h2>
											<%=org.getName()%></h2><br><br>
										<small><cite title="City"> <%=org.getCity()%> <i class="glyphicon glyphicon-map-marker">
										</i></cite></small>
										<br>
										<p>
											<i class="glyphicon glyphicon-envelope"></i><%=org.getEmail()%>
											<br /><br>
											<i class="glyphicon glyphicon-globe"></i><a href="http://<%=org.getWebsite()%>"><%=org.getWebsite()%></a>
											<br /><br>
											<i class="glyphicon glyphicon-phone"></i><%=org.getMobile_no()%>
											<br /><br>
											<i class="glyphicon glyphicon-education"></i><%=org.getUniversity()%>
											<br /><br>
											<i class="glyphicon glyphicon-gift"></i>Pool Organised
										</p><br><br>
									<a href="instituteUpdate.jsp"><button class="btn btn-primary btn-block">UPDATE</button></a>
									<%
											}
								   %>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

</body>
</html>
