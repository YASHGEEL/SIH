<%@page import="mail.Mailer"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String [] to={"johri.aishwary45@gmail.com"};
Mailer.sendFromGMail("gaurav06051997@gmail.com","gauravsharma@786",to,"test","hi");
	out.print("Success");
%>
</body>
</html>