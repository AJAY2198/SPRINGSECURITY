<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Security Demo</title>
</head>
<body>
<h1>AjCode Company home page </h1>

<hr>
Welcome to AjCode Company

<hr>
<form:form  action="${pageContext.request.contextPath}/logout"
   method = "post">
   
   <input type ="submit" value ="Logout"/>


</form:form>


</body>
</html>