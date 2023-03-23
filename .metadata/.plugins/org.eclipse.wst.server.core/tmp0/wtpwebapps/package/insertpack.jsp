<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style> 


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









input[type=text] {
  
  width: 100%;
  padding: 12px 20px;
  margin: 10px 4px;
  box-sizing: border-box;
  border: 2px solid green;
  border-radius: 3px;
}













</style>






<meta charset="ISO-8859-1">
<title>Input Package Details Here</title>
</head>
<body>

<h1 >Please enter new package details here</h1>
	<form action="insert" method="post">
	
	
	   
	
		<lable for="name">01)Name -</lable>
		 <input type="text" name="name"><br>
		 
		 <lable for="des">02)Destination -</lable>
		 <input type="text" name="des"><br>
		 
		 <lable for="day">03)Number of Days -</lable>
		 <input type="text" name="days"><br>
		 
		 <lable for="pase">04)Number of passengers -</lable>
		<input type="text" name="pass"><br>
		
		<lable for="tt">05)Total Amount -</lable>
		 <input type="text" name="tot"><br>
		
		<input type="submit" name="submit" value="CREATE PACKAGE" class="button">
	</form>

<a href="Admin.jsp">
<input type="button" name="update" value="Back to admin's page" class="button1"><br>
</a>




		         <footer>
          <div class="footerContent">
            <div class="socialTags">
                <div class="socialmedia">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
            <div class="footer-about">
                <div class="contact">
                    <h4>Contact Us</h4>
                    <div class="phone">
                        <span class="fas fa-phone"></span>
                        <span class="text">+94 71 258 8935</span>
                    </div>
                    <div class="email">
                        <span class="fas fa-envelope"></span>
                        <span class="text">umawards99@gmail.com</span>
                    </div>
                    
                </div>
            </div>

            <div class="footerBottom">
                &copy; UMawards.com (All Rights Reserved) | Designed by MLB02.01.09 team
            </div>    
          </div> 
        </footer>



</body>
</html>