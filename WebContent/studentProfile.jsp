<html>
<head>
<%@page import="java.util.List"%>
<%@page import="service.studentsignup"%>
<%@page import="entity.student_login"%>

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
<body background="./img/new.png">
				<div class="container">
					<div class="row">
						<div class="col-xs-6 col-xs-offset-3 ">
							<div class="well well-sm">
								<div class="row">
									<div class="col-sm-12 co-sm text-center">
									  <% 
									studentsignup cs = new studentsignup();	
									  String name = (String)session.getAttribute("c_uname");
							  		 List<student_login> studentLG = cs.studentprofile(name);
							  		for (student_login org : studentLG) {
									%>
										<h2>
											<%=org.getFirst_name() %> <%=org.getLast_name() %></h2><br><br>
										
										<br>
										<p>
											<i class="glyphicon glyphicon-envelope"></i><%=org.getEmail() %>
											<br /><br>
											<i class="glyphicon glyphicon-phone"></i><%=org.getMobile_no() %>
											<br /><br>
											<i class="glyphicon glyphicon-education"></i><%=org.getCollege_name() %>
										</p><br><br>
										<a href="studentUpdate.jsp" ><button class="btn btn-primary btn-block">UPDATE</button></a>
											
								   <% } %>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

</body>
</html>
