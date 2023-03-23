<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table border=2>
   <c:forEach var = "pus" items="${packDetails}">
     	<tr>
		<td>Package ID</td>
		<td>${pus.getId()}</td>
	</tr>
	<tr>
		<td>Package Name</td>
		<td>${pus.getName()}</td>
	</tr>
	<tr>
		<td>Destination</td>
		<td>${pus.getDestination()}</td>
	</tr>
	<tr>
		<td>Number Of Days</td>
		<td>${pus.getDays()}</td>
	</tr>
	<tr>
		<td>Maximum Number Of Passengers</td>
		<td>${pus.getPassengers()}</td>
	</tr>
    <tr><td>Total Amount</td>
		<td>${pus.getAmount()}</td>
	</tr>
	
   </c:forEach>
   </table>
















</body>
</html>