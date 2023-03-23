<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Visit Lanka(PVT)</title>

<style>



.footer{
  height:80%;
  width:100%;
  background-color:#000000;
  
  position:absolute;
  right:0%;
  top:-30%;
  
}
.footimage{





}
.foot{
  position:absolute;
  background-color:#000000;
  top:123%;
  height:20%;
  width:100%;
  right:0%;
  
}
.footcolor{

  color:red;
}

.adminlogo{
	
	position:absolute;
	hight:50px;
	width:120px;
	top:3%;
	
}

.works{


position:absolute;
	width:200%;
	height:85%;
	top:25%;
	background-color: #663399;
    





}



.btnn{
	
	
	
	 width: 300px; 
	 height:150px;
	 right:180%;
	 top:33px;
     background-color:#F4A460;
     border: 9px solid #dcdada;
     color: white;
     padding: 5px;
     font-size: 26px;
     font-weight:bold;
     cursor: pointer;
     margin: 12px 0;
     box-shadow: 0 15px 25px rgba(0,0,0,.6);
	
	

}

.Hbtnn{
	
	
	position: relative;
     bottom: 80px;
	 width: 200px; 
	 height:80px;
	 right:10%;
	 left:80%;
	 top:33px;
     background-color:#000099;
     border: 9px solid #dcdada;
     color: white;
     padding: 5px;
     font-size: 26px;
     font-weight:bold;
     cursor: pointer;
     margin: 12px 0;
     box-shadow: 0 15px 25px rgba(0,0,0,.6);
	
	

}

.adm{

 
 
  text-align: left;
  text-decoration: none;
   display: inline-block;
  font-size: 64px;
  margin: 4px 2px;
  cursor: pointer;
  color: #4CAF50;
  



}

.adminT{
     
     width:100px;
     position: relative; 
	 left:300%;
	

}





	
	
}




</style>
</head>


<body>
<!DOCTYPE html>

 <a href="homePrac.jsp">
<input type="button"  class="Hbtnn" name="gohome" value="HOME" align="right"><br>
</a> 

<!--Admi'n logo-->

<div class="adminlogo">

<img src="img/admin.jpg" class="adminlogo" border="5" >

<!-- Admin Text -->
<div class="adminT">
<h3 class="adm">ADMIN'S PAGE</h3>
</div>>


</div>


<div class="works">


<a href="packLogin.jsp">
<input type="button" class="btnn" name="update" value="View Package Details" ><br>

</a>


<a href="insertpack.jsp">
<input type="button"  class="btnn" name="update" value="Create new packages"><br>
</a>


<a href="#">
<input type="button"  class="btnn" name="update" value="View Driver's Details"><br>
</a>

</div>




<!--footer-->
	<footer>
		<div class="foot">
			<img class="footimage" src="banner-9.jpg">
			<div class="footer">


				<center>
					<p class="footcolor">Copyrights reserved @ 2021 Visit Lanka.com</p>
					<a href="contactus.html">Privacy policy | Terms and conditions</a>
				</center>
			</div>
		</div>
	</footer>



</body>

</html>
 
 
 


