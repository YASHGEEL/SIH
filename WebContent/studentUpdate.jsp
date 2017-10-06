<%@page import="service.studentsignup"%>
<html>
<head>
<%@page import="service.collegesignup"%>
<%@page import="java.util.List"%>
<%@page import="service.companysignup"%>
<%@page import="entity.student_login"%>
<%@page import="entity.college_login"%>
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
  <h1><center style="font-family: cursive;font-size: 60px;color:white"><u>Update  Student  Info...</u></center></h1>
  <br><br>
  <form name=upd action=studentUpdateBean.jsp method="post" >
  
		<% 
									studentsignup cs = new studentsignup();	
									  String name = (String)session.getAttribute("c_uname");
									  List<student_login> studentLG = cs.studentprofile(name);
							  		for (student_login org : studentLG) {
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
      <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
      <input id="contact" type="number" min=1000000000 max=9999999999 class="form-control" name="mobile_no" value="<%=org.getMobile_no()%>" required=true>
    </div>
    <br>
    
	<p id="passmsg"></p>
	<a href="studentHome.html"><button type="submit" class="btn btn-primary btn-lg btn-block">Update</button></a>
  </form>
  <br>
    <a href="studentConsole.jsp"><button type="button" class="btn btn-primary btn-lg btn-block">Cancel</button></a>
  </div>
  
	<% } %>

</body>
</html>