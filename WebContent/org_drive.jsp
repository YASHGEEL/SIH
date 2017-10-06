<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="service.companysignup"%>
<%@page import="entity.company_login"%>
<%@page import="signup.drive" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>drive</title>
</head>
<body>

<% companysignup cs = new companysignup();
									  String n=null;
									  String nam = (String)session.getAttribute("c_uname");
							  		 List<company_login> companyLG = cs.companyprofile(nam);
							  		 for (company_login org : companyLG) 
							  		 {
							  			n=org.getName();
							  		 }
							  		 
							  		%>	
<jsp:useBean id="signup" class="signup.drive"></jsp:useBean>
<jsp:setProperty property="*" name="signup"/>

<%
drive.name=nam;
drive.nn=n;
signup.update();
%>
		
		Sucessfull Added.!
		response
		<a href="organisationBulletin.jsp">back</a>
					  		
</body>
</html>