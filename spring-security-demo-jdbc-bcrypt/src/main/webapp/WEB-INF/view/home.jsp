<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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

<p>
User: <security:authentication property="principal.username"/>
<br><br>
Role: <security:authentication  property="principal.authorities"/>
</p>



<security:authorize access ="hasRole('MANAGER')">
<p>
<a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
(Only for Mangers)
</p>
</security:authorize>

<security:authorize access ="hasRole('ADMIN')">
<p>
<a href="${pageContext.request.contextPath}/systems">Systems Meeting</a>
(Only for Admin)
</p>
</security:authorize>

<hr>
<form:form  action="${pageContext.request.contextPath}/logout"
   method = "post">
   
   <input type ="submit" value ="Logout"/>


</form:form>


</body>
</html>