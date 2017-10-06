<!DOCTYPE html>
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
<body style="text-align:center; overflow-x: auto";>

<%	
	String aname,stat;
  	aname = request.getParameter("aname");
  	stat = request.getParameter("status");
	if( aname!=null && stat!= null){
		
	}
	
	aname=null;stat=null;
%>

<h1>Applicants</h1>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names..." title="Type in a City">

<table id="myTable" style="overflow-x:auto">
  <tr class="header">
    <th style="width:50%;">Name</th>
    <th style="width:20%;">City</th>
	<th style="width:15%;">Status</th>
	<th style="width:15%;">Switch</th>
  </tr>
  
  <tr>
    <td class="applicantName">Alfreds Futterkiste</td>
    <td>Germany</td>
	<td class="stat">NotSelected</td>
	<td><button class ="btn btn-primary btn-md hit">switch</button></td>
  </tr>
  
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
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}


$(".hit").click(function(){
	var $row = $(this).closest("tr");
	var $stat = $row.find(".stat").text();
	var $applicantName = $row.find(".applicantName").text();
	
	if($stat=="NotSelected"){
		$row.find(".stat").text("Selected");
	}
	else{
		$row.find(".stat").text("NotSelected");
	}
	
	location.replace("organisationApplicants.jsp?aname="+$applicantName+"&status="+$stat);
	
});
</script>

</body>
</html>
