<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="service.companysignup"%>
<%@page import="entity.company_login"%>
<html>
<head>

  <link rel="stylesheet" href="./css/bootstrap.min.css">
 
 
 
  
<style>
body {
    font-family: "Lato", sans-serif;
    overflow: "auto";
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

.frm{
	height:100%
}

.if{
		height:100%
}

</style>
</head>
<body style="overflow:hidden">

<div class="container">
<div id="mySidenav" class="sidenav" >
<% 
									companysignup cs = new companysignup();	
									  String name = (String)session.getAttribute("c_uname");
							  		 List<company_login> companyLG = cs.companyprofile(name);
							  		for (company_login org : companyLG) {
									%>
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <strong>Hello <%=org.getName() %></strong>
  <% } %>
  <a href="organisationHome.html" target="ifram" onclick="closeNav()"><span class="glyphicon glyphicon-home"></span>&nbsp; Home</a>
  <a href="organisatio
  nProfile.jsp" target="ifram" onclick="closeNav()"><span class="glyphicon glyphicon-user"></span>&nbsp;Profile</a>
  
  <a href="organisationBulletin.jsp" target="ifram" onclick="closeNav()"><span class="glyphicon glyphicon-blackboard"></span>&nbsp;Drives</a>
  <a href="organisationInstitutes.jsp" target="ifram" onclick="closeNav()"><span class="glyphicon glyphicon-education"></span>&nbsp;Institutes List</a>
  <!--<a href="organisationApplicants.jsp" target="ifram" onclick="closeNav()"><span class="glyphicon glyphicon-th-list"></span>&nbsp;Applicants</a>-->
  <a href="organisationLogin.jsp"  onclick="closeNav()"><span class="glyphicon glyphicon-log-out"></span>&nbsp;logout</a>
  
</div>

<nav class="navbar navbar-default navbar-fixed-top" style="z-index:1;background-color:black" >
  
    <!-- Brand and toggle get grouped for better mobile display -->
    
     
	  <div class="navbar-brand" >
	  
<span style="font-size:30px;cursor:pointer;margin-right:2%;color:white" onclick="openNav()">&#9776;</span>

	  </div>
       
   
</nav>


	<div  class="frm" style="margin-top:50px" >
		 <iframe class="if" name="ifram" src="organisationHome.html" style="height:615px;width:110%;overflow-x: auto" ></iframe>
		</div>

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
