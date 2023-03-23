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
       <c:forEach var = "pack"   items ="${ packdetails}">
       
       $ { pack.packageID}
       $ { pack.packageName}
       $ { pack.Destination}
       $ { pack.numOfDays}
       $ { pack.numOfPassengers}
       $ { pack.totalAmount}
           
       </c:forEach>


</body>
</html>