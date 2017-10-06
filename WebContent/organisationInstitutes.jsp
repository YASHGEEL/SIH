<html>
<%@page import="service.collegesignup"%>
<%@page import="java.util.List"%>
<%@page import="service.companysignup"%>
<%@page import="entity.company_login"%>
<%@page import="entity.college_login"%>

<head>

	<link href="css/bootstrap.min.css" rel="stylesheet">
	 <script src="js/jquery.js"></script>
	 <script src="js/bootstrap.min.js"></script>

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

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Company Name</h4>
        </div>
        <div class="modal-body">
          <p>Modal content..</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
</div>


<div class="container-fluid">
			<div class=row>
				<div class="col-lg-12 text-center">
				<h1 style="margin-bottom:15px">Institutes</h>
						<table id="t01" style="margin-top:20px">
						  <tr>
							<th width=40%>Institue Name</th>
							<th width=15%>City</th> 
							<th width=10%>Contact</th>
							<th width=15%>Website</th>
						  </tr>
						  <tr>
						  <%
										  		collegesignup ss = new collegesignup();			
										  		 List<college_login> collegeLG = ss.indexcollege();
												  
												  for (college_login org : collegeLG) {
										  %>
							<td class="insname"><%=org.getName() %></td>
							<td class="city"><%=org.getCity()%></td>
							
							
							
							<td><%=org.getMobile_no()%></td>
							<td><a href= #><%=org.getWebsite() %></a></td>
						  </tr>
						 <% }  %> 						 
						
						</table>

				</div>
			</div>
			
		</div>

		<script>
$(".details").click(function() {
    var $row = $(this).closest("tr");    // Find the row
    var $text1 = $row.find(".insname").text(); // Find the text
    var $text2 = $row.find(".city").text();
	var $text3 = $row.find(".poolorg").text();

	
     $("#myModal").modal({show: true});

	 $(".modal-title").text($text1);
     $(".modal-body").text($text2+"\n"+$text3);
});

		</script>
</body>

</html>