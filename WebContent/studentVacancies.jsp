<!DOCTYPE html>
<%@page import="entity.drive" %>
<%@page import="service.drivemanager"%>
<%@page import="java.util.List"%>
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

<h1>Vacancies</h1>
<div class="row">
<div class="col-lg-6">
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Company name..." title="Type in a City">
</div>
<div class="col-lg-6">
<input type="text" id="myInputone" onkeyup="myFunctionone()" placeholder="Search for City..." title="Type in a City">
</div>
<table id="myTable">
  <tr class="header">
    <th style="width:20%; text-align:center">Company Name</th>
	<th style="width:20%; text-align:center">Pool College</th>
    <th style="width:20%; text-align:center">City</th>
    <th style="width:20%; text-align:center">Total Vacancies</th>
	<th style="width:20%; text-align:center">Date</th>
  </tr>
 
  
   <% 
	 drivemanager d = new drivemanager();					  
     List<drive> colleg = d.indexcollege();											  
	  for (drive dd : colleg) 
	  {
   %>
	 <tr>					
						
						
    <td style="text-align:center"><%= dd.getC_name() %></td>
    <td style="text-align:center"><%= dd.getCollege()%></td>
	 <td style="text-align:center"><%= dd.getCity()%></td>
    <td style="text-align:center"><%= dd.getTotal()%></td>
    <td style="text-align:center"><%= dd.getDate()%></td>
	
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

<script>
function myFunctionone() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInputone");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[2];
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
<script>
$(".hit").click(function(){
	var $row = $(this).closest("tr");
	var $txt = $row.find(".stat").text();
	
	if($txt=="NotSelected"){
		$row.find(".stat").text("Selected");
	}
	else{
		$row.find(".stat").text("NotSelected");
	}
});
</script>

</body>
</html>
