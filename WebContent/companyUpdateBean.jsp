<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="signup" class="signup.company"></jsp:useBean>
<jsp:setProperty property="*" name="signup"/>

<%
   String name = (String) session.getAttribute("c_uname");
   signup.updatenew(name);
   response.sendRedirect("organisationHome.html");
%>
</body>
</html>