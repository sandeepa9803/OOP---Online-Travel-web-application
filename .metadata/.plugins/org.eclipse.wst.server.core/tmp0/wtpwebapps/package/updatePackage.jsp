<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, td, th {  
  border: 1px solid #802b00;
  text-align: left;
}

table {
  border-collapse: collapse;
  width: 80%;
}

th, td {
  padding: 20px;
}



.button {
  background-color: green;
  border: 1;
  color: black;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  font-weight: bold;
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





</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("pname");
		String des = request.getParameter("desti");
		String numdays = request.getParameter("dayss");
		String numpass = request.getParameter("passen");
		String tota = request.getParameter("tota");
	%>


<form action="update" method="post">
	<table border="3">
		<tr>
			<td>Package ID</td>
			<td><input type="text" name="packid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Package name</td>
			<td><input type="text" name="pname" value="<%= name %>"></td>
		</tr>
		<tr>
		<td>Destination</td>
		<td><input type="text" name="dest" value="<%= des %>"></td>
	</tr>
	<tr>
		<td>Number Of Days</td>
		<td><input type="text" name="days" value="<%= numdays %>"></td>
	</tr>
	<tr>
		<td>Number Of Passengers</td>
		<td><input type="text" name="pass" value="<%= numpass %>"></td>
	</tr>
	<tr>
		<td>Total Amount</td>
		<td><input type="text" name="tot" value="<%= tota %>"></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Update Package Delails" class="button">
	</form>
	
	
	<a href="Admin.jsp">
<input type="button" name="update" value="Back to admin's page" class="button1"><br>
</a>
	
</body>
</html>