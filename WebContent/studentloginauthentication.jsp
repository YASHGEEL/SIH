<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
hello



  <jsp:useBean id="signup" class="signup.studentlogin"></jsp:useBean>
  <jsp:setProperty property="*" name="signup"/>

<%
   boolean f=signup.logincheck();
   if(f==true)
   {
	   session.setAttribute("c_uname", signup.uname);
	   response.sendRedirect("studentConsole.jsp");
   }	   
   else
	  response.sendRedirect("error.jsp");

%>

</body>
</html>