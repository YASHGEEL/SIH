<!DOCTYPE html>
<html>
<head>
<%@page import="java.util.List"%>
<%@page import="service.collegesignup"%>
<%@page import="entity.college_login"%>

  <link rel="stylesheet" href="./css/bootstrap.min.css">
  
<style>

body {
    font-family: "Lato", sans-serif;
}

strong{
		 padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 30px;
    font-family:cursive;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 3;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover, .offcanvas a:focus{
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

</style>
</head>

<body style="overflow:hidden">

<div id="mySidenav" class="sidenav" >
<% 
									collegesignup cs = new collegesignup();	
									  String name = (String)session.getAttribute("c_uname");
							  		 List<college_login> collegeLG = cs.collegeprofile(name);
							  		for (college_login org : collegeLG) {
									%>
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
   <strong>Hello <%=org.getName() %></strong>
   <% } %>
   <a href="instituteHome.html" target="ifram" onclick="closeNav()"><span class="glyphicon glyphicon-home"></span>&nbsp; Home</a>
  <a href="instituteProfile.jsp" target="ifram" onclick="closeNav()"><span class="glyphicon glyphicon-book"></span>&nbsp; Profile</a>
  <a href="instituteUpdate.jsp" target="ifram" onclick="closeNav()"><span class="glyphicon glyphicon-user"></span>&nbsp;Update</a>
  <a href="institutepoolList.jsp" target="ifram" onclick="closeNav()"><span class="glyphicon glyphicon-list"></span>&nbsp;PoolList</a>
  <a href="instituteLogin.jsp"  onclick="closeNav()"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Logout</a>
 
</div>

<nav class="navbar navbar-default navbar-fixed-top" style="z-index:1;" >
  
    <!-- Brand and toggle get grouped for better mobile display -->
    
     
	  <div class="navbar-brand" >
	  
<span style="font-size:30px;cursor:pointer;margin-right:2%;" onclick="openNav()">&#9776;</span>

	  </div>
       
   
</nav>


	<div  style="margin-top:50px" >
		 <iframe id ="if" name="ifram" src="instituteHome.html" style="height:615px;width:100%;overflow-x: auto" ></iframe>
		</div>



<script>

function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
     
</body>
</html> 
