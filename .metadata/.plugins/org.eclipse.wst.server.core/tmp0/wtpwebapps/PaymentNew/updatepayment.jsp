<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>
    
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
  background-color: #1F618D;
  border: 1;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
   font-weight: bold;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  margin-left:auto;
  margin-right:auto;
  text-align:center;
   border-radius:12px;
}

table{
   border:solid black ;
   font-family:"Courier New", Courier, monospace;
    font-size:200%;
    
}

body {
background-color:#A9CCE3  }

h1 {font-family: 'Quicksand';font-size: 45px;
     }
      


</style>



<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Update Payment Details</h1>

   <%
      String PaymentID=request.getParameter("PaymentID");
      String CardHoldersName=request.getParameter("CardHoldersName");
      String CardNumber=request.getParameter("CardNumber");
      String SecurityCode = request.getParameter("SecurityCode");
      String ExpireDate=request.getParameter("ExpireDate");
   %>
    
    <form action="update" method ="post" >
    <table>
     <tr>
     <td>  Payment ID </td>
     <td> <input type ="number" name="paymentid" value="<%=PaymentID%>" readonly></td>
     </tr>
     
     <tr>
     <td> Card Holder Name </td>
     <td><input type ="text" name="cardholder" value="<%=CardHoldersName%>"></td>
     </tr>
     
     <tr>
     <td> Card Number </td>
     <td> <input type ="number" name="cardnum" value="<%=CardNumber%>"></td>
     </tr>
     
     <tr>
     <td> Security Code </td>
     <td><input type ="number" name="cvcnum" value="<%=SecurityCode%>"> </td>
     </tr>
    
    <tr>
    <td> Expire Date </td>
    <td><input type ="date" name="date" value="<%=ExpireDate%>"> </td>
    </tr>
    </table>
    <br>
    
    <input type ="submit" name="submit" value="Update Payment Details" class ="button" >
    </form>

</body>
</html>