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
  background-color: #4CAF50;
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

<h1>Package Delete</h1>
<form action="delete" method="post">
	<table>
		<tr>
			<td>Package ID</td>
			<td><input type="text" name="packid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Package name</td>
			<td><input type="text" name="pname" value="<%= name %>" readonly></td>
		</tr>
		<tr>
		<td>Destination</td>
		<td><input type="text" name="dest" value="<%= des %>" readonly></td>
	</tr>
	<tr>
		<td>Number Of Days</td>
		<td><input type="text" name="days" value="<%= numdays %>" readonly></td>
	</tr>
	<tr>
		<td>Number Of Passengers</td>
		<td><input type="text" name="pass" value="<%= numpass %>" readonly></td>
	</tr>
	<tr>
		<td>Total Amount</td>
		<td><input type="text" name="tot" value="<%= tota %>" readonly></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Delete Package" class="button">
	</form>
	








</body>
</html>