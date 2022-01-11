<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Mycss.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body id="body10">

<div class="topnav">
  <a class="active" href="#">Home</a>
  <a href="Appointments.jsp">Appointments</a>
  <a href="Diagnostics.jsp">Diagnostics</a>
  <a href="Aboutus.jsp">About us</a>
  <a href="Home.jsp">Log out</a>
</div>

<div class="d8">
		<h2 id="m1">HEALTH FIRST MEDICAL ASSOCIATION</h2>
</div>
<div class="slideshow-container">

		<div class="mySlides fade">
			<img id="slide" src="Images/back14.png" style="width:500px">
		</div>

		<div class="mySlides fade">
			<img id="slide" src="Images/back15.jpg" style="width:500px">
		</div>

		<div class="mySlides fade">
			<img id="slide" src="Images/back16.jpg" style="width:500px">
		</div>

		<div class="mySlides fade">
			<img id="slide" src="Images/back17.jpg" style="width:500px">
		</div>

		<div class="mySlides fade">
		  <img id="slide" src="Images/back18.jpeg" style="width:500px">
		</div>

		<div class="mySlides fade">
		  <img id="slide" src="Images/back19.jpg" style="width:500px">
		</div>

		<div class="mySlides fade">
		  <img id="slide" src="Images/back20.jpg" style="width:500px">
		</div>

	</div>
	
	<script>
	var slideIndex = 0;
	showSlides();

	function showSlides() {
	  var i;
	  var slides = document.getElementsByClassName("mySlides");
	  var dots = document.getElementsByClassName("mySlides fade");
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";  
		}
	  slideIndex++;
		if (slideIndex > slides.length) {slideIndex = 1}    
			slides[slideIndex-1].style.display = "block";  
			setTimeout(showSlides, 5000); 
	}
	
	</script>


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