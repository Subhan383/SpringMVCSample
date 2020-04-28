<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Form</title>
</head>
<body>
<form:form action="displayUserInfo" modelAttribute="user">
Name: <form:input path="name"/>
<p/>
Gender: <form:radiobuttons path="gender" items="${genderMap }"/>
        <p/>
Country: <form:select path="country" items="${countryMap }"></form:select>
          <p/>
Introduction: <form:textarea path="introduction" /> 
          <p/>    
Visited Countries: 
   Singapore:  <form:checkbox path="visitedCountries" value="Singapore"/>
   Japan:   <form:checkbox path="visitedCountries" value="JAPAN"/>
   Germany:  <form:checkbox path="visitedCountries" value="Germany"/>
   Italy:    <form:checkbox path="visitedCountries" value="Italy"/>
   Africa:    <form:checkbox path="visitedCountries" value="Africa"/>
          <p/>      
        <input type="submit" value="Submit">

</form:form>

</body>
</html>