<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<style>

.button {
  background-color: #4CAF50;
  border: 1;
  color: black;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}



.button1 {
  background-color: #000000;
  border: 1;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}







table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {background-color: #AF675A;}
</style>


<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h1>Hai Admin...! <br>Package Details</h1>



<table border=6>
   <c:forEach var = "pus" items="${packDetails}">
   
    <c:set var="packageID" value="${pus.getId()}"/>
	<c:set var="packageName" value="${pus.getName()}"/>
	<c:set var="Destination" value="${pus.getDestination()}"/>
	<c:set var="numOfDays" value="${pus.getDays()}"/>
	<c:set var="numOfPassengers" value="${pus.getPassengers()}"/>
	<c:set var="totalAmount" value="${pus.getAmount()}"/>
  
   
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
   
   
   
   <c:url value="updatePackage.jsp" var="packupdate"> 
   
    
    	
		<c:param name="id" value="${packageID}"/>
		<c:param name="pname" value="${packageName}"/>
		<c:param name="desti" value="${Destination}"/>
		<c:param name="dayss" value="${numOfDays}"/>
		<c:param name="passen" value="${numOfPassengers}"/>
		<c:param name="tota" value="${totalAmount}"/>
	</c:url>
	 <br><br>
<a href="${packupdate}"> 
<input type="button" name="update" value="Update Package Details" class="button">
</a>









	<br>
	<c:url value="deletePackage.jsp" var="packdelete">
		<c:param name="id" value="${packageID}" />
		<c:param name="pname" value="${packageName}" />
		<c:param name="desti" value="${Destination}" />
		<c:param name="dayss" value="${numOfDays}" />
		<c:param name="pass" value="${numOfPassengers}" />
		<c:param name="tota" value="${totalAmount}"/>
	</c:url>
	
	<br>
	<a href="${packdelete}">
	<input type="button" name="delete" value="Delete My Account" class="button">
	</a>
	<br><br>
	
		<a href="Admin.jsp">
	<input type="button" name="delete" value="Back to Admin's page" class="button1">
	</a>
	


</body>
</html>