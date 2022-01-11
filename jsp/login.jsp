<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Mycss.css">
<meta charset="ISO-8859-1">
<title>login</title>
</head>
<body id="body1">

<div class="topnav">
  <a href="Home.jsp">Home</a>
  <a href="#">Appointments</a>
  <a href="#">Diagnostics</a>
  <a href="#">Profile</a>
  <a href="#">About us</a> 
</div>

<div class="d1">
	<form action="logs" method="post">
		<h2>LOGIN</h2>
		User name <input type="text" name="uid" placeholder="Enter your username"><br>
		Password <input type="password" name="pwd" placeholder="Enter your password"><br>
		<input type="submit" name="submit" class="button" value="Login">
	</form> 
</div>


<br><br><br><br><br><br><br><br><br><br><br>
<!--Footer-->
	<div class="footer">
		<div class="footer-content">
			<div class="footer-section-about">
				<h3 class="logo-text"> <span></span> About Us</h3>
				<p>
					We make you healthy.<br> Make your life a worthy one.<br>Visit us!
				</p>
			</div>
			<div class="footer-section-links">
				<h3>Reach Us</h3>
				<p>No. 3/13,<br>Sumangala Road,<br>Colombo 02</p>
			</div>
			<div class = "Contact-Us">
				<h3>Contact Us</h3>
				<p>healthfirstcolombo@gmail.com<br>0719945268 - Pasindu<br>0714593658 - Shan<p>
			</div>
			<div class = "Barcode">
				<image src = "Images/barcode.JPG" alt = "Barcode Image" width= "80" height= "80">
			</div>
			<div class = "Social">
				<a href = "https://www.facebook.com/" >
					<image src ="Images/fb.JPG" class = "facebook" width= "60" height= "60";>
				</a>
				<a href = "https://www.twitter.com/">
					<image src ="Images/twitter.JPG" class = "twitter" width= "60" height= "60";>
				</a>
				<a href = "https://www.instagram.com/">
					<image src ="Images/inster.JPG" class = "instagram" width= "60" height= "60";>
				</a>
				<a href = "https://www.youtube.com/">
					<image src ="Images/youtube.JPG" class = "youtube" width= "60" height= "60";>
				</a>
			</div>
		</div>
	</div>
	
</body>
</html>