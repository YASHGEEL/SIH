<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="service.drivemanager"%>
<%@page import="service.collegesignup"%>
<%@page import="java.util.List"%>
<%@page import="entity.college_login"%>
<%@page import="entity.drive" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>
  
  <style>
table {
    width:100%;
}
table, th, td {
    border-collapse: collapse;
}
th, td {
    padding: 10px;
    text-align: center;
}

tr{
	padding 10px;
	border-width:1px;
	text-align:center
}

table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color:#fff;
}
table#t01 th {
    background-color: black;
    color: white;
	margin-top:5px;
}
</style>
  
</head>



<body>

<div class="container-fliud">
  <h1 style="text-align:center;font-size:30px"><u>Drives</u></h1>
  <ul class="nav nav-tabs">
    <li class="active" style="width:50%"><a href="#recent">Current Drives</a></li>
    <li style="width:50%"><a href="#update">Add new</a></li>
  </ul>

  <div class="tab-content">
    <div id="recent" class="tab-pane fade in active">
    <br>
    		
    		<div class="container-fluid">
			<div class=row>
				<div class="col-lg-12 text-center">
						<table id="t01" style="margin-top:20px">
						  <tr>
							<th width=40%>Institue Name</th>
							<th width=20%>City</th> 
							<th width=20%>Total Vacancies</th>
							<th width=20%>Date</th>
						  </tr>
						  
			  			  <% 
						  drivemanager d = new drivemanager();	
						  String nj=(String)session.getAttribute("c_uname");
										  		 List<drive> collegeLG = d.indexcollege(nj);
												  
												  for (drive dd : collegeLG) {
										  %>
						<tr>
							<td><%=dd.getCollege() %></td>
							<td><%=dd.getCity() %></td>
							<td><%=dd.getTotal() %></td>
							<td><%=dd.getDate()%></td>
						
						</tr>	
							
							<% } %>
					  
						  						  
						</table>

				</div>
			</div>
			
		</div>
    		  	
    </div>
    
    
       <div id="update" class="tab-pane fade">
      <br>
      		
      			<div class="container-fluid">
			<div class=row>
				<div class="col-lg-12 text-center">
				
							  <form class="form-horizontal" action="org_drive.jsp" method="post">
							  <br>
  								<br>
  								<br>
  								<br>
							    <div class="input-group">
    							<span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
    						
    							<select id="disabledSelect" class="form-control" name="college">
							            <option  value="" disabled="disabled" selected="selected">Please select Institue Name</option>
										 <%
										  		collegesignup ss = new collegesignup();			
										  		 List<college_login> collegeL = ss.indexcollege();
												  
												  for (college_login org : collegeL) {
										  %>
										  		     <option value="<%=org.getName() %>"><%=org.getName() %></option>
										  		     
										  <%
										  		}
										  %>
										 </select>
    							 </div>
    							 <br>
  								<br>
  								<div class="input-group">
    							<span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
    							<input id="city" type="text" class="form-control" name="city" placeholder="City">
  								</div>
  								<br>
  								<br>
  								<div class="input-group">
    							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    							<input id="total" type="text" class="form-control" name="total" placeholder="Total Vancancies">
  								</div>
  								<br>
  								<br>
  								<div class="input-group">
    							<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
    							<input id="date" type="text" class="form-control" name="date" placeholder="dd/mm/yy">
  								</div>
  								<br>
  								<br>
  								
							    <button type="submit" class="btn btn-primary btn-block">Submit</button>  
							      
							    
							  </form>
  
  
</div>
						

				</div>
			</div>
			
		</div>
      		
    </div>
  </div>
</div>

<script>
$(document).ready(function(){
    $(".nav-tabs a").click(function(){
        $(this).tab('show');
    });
});
</script>

</body>
</html>
    