<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Mycss.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body id="body8">

<div class="topnav">
  <a href="Home2.jsp">Home</a>
  <a href="Appointments.jsp">Appointments</a>
  <a href="Diagnostics.jsp">Diagnostics</a>
  <a href="Aboutus.jsp">About</a> 
  <a href="Home.jsp">Log out</a> 
</div> 
	
	<%
		String appID=request.getParameter("aid");
		String patientID=request.getParameter("pid");
		String name=request.getParameter("name");
		String status=request.getParameter("status");
		String payment=request.getParameter("payment");
	%>
	
<div class="d1">
<br><br><br>	 
	<form action="updated" method="post">
		<b>Appointment ID </b><input type="text" name="aid" value="<%= appID %>" readonly><br>
		<b>Patient ID </b><input type="text" name="pid" value="<%= patientID %>" readonly><br>
		<b>Name</b> <input type="text" name="name" value="<%= name %>" readonly><br>
		<b>Status</b> <input type="text" name="status" value="<%= status %>"><br>
		<b>Payment</b> <input type="text" name="payment" value="<%= payment %>" ><br>
	
	 
	<input type="submit" name="submit" value="Update appointment" class="button">
	
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