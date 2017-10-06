<!DOCTYPE html>
<%@page import="entity.drive" %>
<%@page import="service.drivemanager"%>
<%@page import="java.util.List"%>
<%@page import="service.collegesignup"%>
<%@page import="entity.college_login"%>
<html>
<head>

<link href="css/bootstrap.min.css" rel="stylesheet">

<style>
* {
  box-sizing: border-box;
}

#myInput {
  background:url("./img/search.png");
  background-position: 5px 6px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myInputone  {
  background:url("./img/search.png");
  background-position: 5px 6px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}
#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}

table#myTable tr:nth-child(even) {
    background-color: #eee;
}
table#myTable tr:nth-child(odd) {
   background-color:#fff;
}
table#myTable th {
    background-color: black;
    color: white;
	margin-top:5px;
}
</style>
</head>
<body style="text-align:center;overflow:auto">

<h1>Company List</h1>

<div class="col-lg-12">
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Company name..." title="Type in a City">
</div>

<table id="myTable">
  <tr class="header">
    <th style="width:40">Company Name</th>
	<th style="width:20%;">city</th>
	<th style="width:20%;">vacancies</th>
	<th style="width:20%;">pool Date</th>
</tr>
  
  
  
   <% 
			drivemanager d = new drivemanager();
   			String name = (String)session.getAttribute("c_uname");
   			String nn=null;
   			collegesignup cs = new collegesignup();
   			List<college_login> collegeLG = cs.collegeprofile(name);
	  		for (college_login org : collegeLG) {
		    	nn=org.getName() ;
	  		}
	  	%>
	  	<% 	
            List<drive> colleg = d.indexcoll(nn);
			for (drive dd : colleg) 
			{
	%>
	<tr>
	<td><%=dd.getC_name()%> </td>
    <td><%=dd.getCity() %></td>
	 <td><%=dd.getTotal() %></td>
	 <td><%=dd.getDate() %></td>
    </tr>
  <% } %>
</table>

<script src="js/jquery.js"></script>

<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}


</script>


</body>
</html>
