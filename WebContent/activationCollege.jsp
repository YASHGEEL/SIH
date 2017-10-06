<%@page import="service.collegesignup"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Activation</title>

<link href="css/bootstrap.min.css" rel="stylesheet">

</head>
<body style="background-color:#ccffcc">
	<div class="container-fluid" >
		<div class="row" style="margin-top:100px;margin-left:100px;margin-right:100px;background-color:#006600;border-radius: 10px">
			<div class="col-lg-10 col-lg-offset-1 text-center" style="padding:20px;color:white">
			  <%  collegesignup cs = new collegesignup();
			     cs.verifyupdate(request.getParameter("uname"));
			  
			   %>
				Activation Successful
				Your account has been activated<br>
				 <span style="color:yellow">successfully</span> <br>
				 over the username : <%= request.getParameter("uname")%> <br>
			</div>
		</div>
		<div class="row" style="margin-top:20px;margin-left:100px;margin-right:100px;background-color:#4cff4c">
			<a href="instituteLogin.jsp"><button class="btn btn-primary btn-block">Login</button></a>
		</div>
	</div>
</body>
</html>