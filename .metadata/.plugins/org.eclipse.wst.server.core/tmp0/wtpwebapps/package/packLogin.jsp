<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<style> 


.button1 {
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


.button {
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











input[type=text] {
  
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 2px solid green;
  border-radius: 4px;
}
</style>




<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


  <form action="log" method="post">
  
     <lable for="pidd">01)Enter Package ID Here</lable>
     <input type="text" name="pid"><br>
     
     <lable for="pnn">02)Enter Package Name Here</lable>
    <input type="text" name="pn"><br>
     
     <input type="submit" name="Submit" value="DISPLAY PACKAGE DETAILS" class="button1">
  
  </form>



<a href="Admin.jsp">
<input type="button" name="update" value="Back to admin's page" class="button"><br>
</a>





</body>
</html>