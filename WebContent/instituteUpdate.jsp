<%@page import="java.util.List"%>
<%@page import="service.collegesignup"%>
<%@page import="entity.college_login"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>
  <link rel="title_icon" href="download.ico" />
  
  <style>
  

   b{color:white}
   p{color:white}
   
  </style>
</head>
<body background="./img/bgupdate.jpg">
		
<div class="container-fluid">
  <div class="row">
  <div class="col-sm-12" style="text-align: center;padding: 10px">
  <h1><center style="font-family: cursive;font-size: 60px;color:white"><u>Update Institute  Info...</u></center></h1>
  <br><br>
  <form name="upd" action="collegeUpdateBean.jsp" method="post">
  
	<% 
									    collegesignup cs = new collegesignup();	
									  String name = (String)session.getAttribute("c_uname");
							  		 List<college_login> collegeLG = cs.collegeprofile(name);
							  		for (college_login org : collegeLG) {
	%>
	
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <input id="email" type="text" class="form-control" name="email" value="<%=org.getEmail()%>" required=true>
    </div>
	<br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control" value="<%=org.getPassword()%>" name="password" required=true>
	  
    </div>
	<br>
	<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
      <input id="city" type="text" class="form-control" name="city" value="<%=org.getCity()%>" required=true>
    </div>
	<br>
	<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
      <input id="contact" type="number" min=1000000000 max=9999999999 class="form-control" name="mobile_no" value="<%=org.getMobile_no()%>" required=true>
    </div>
    <br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-link"></i></span>
      <input id="website" type="text" class="form-control" name="website" value="<%=org.getWebsite()%>"  required=true>
    </div>
	<br>
	<p id="passmsg"></p>
	<a href="instituteHome.html"><button type="submit" class="btn btn-primary btn-lg btn-block">Update</button></a>
  </form>
  <br>
    <a href="instituteHome.html"><button type="button" class="btn btn-primary btn-lg btn-block">Cancel</button></a>
  </div>

  <% } %>

</body>
</html>