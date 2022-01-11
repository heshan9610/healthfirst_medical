<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Mycss.css">
<meta charset="ISO-8859-1">
<title>Update profile</title>
</head>
<body id="body3">

<div class="topnav">
  <a href="Home2.jsp">Home</a>
  <a href="Appointments.jsp">Appointments</a>
  <a href="Diagnostics.jsp">Diagnostics</a>
  <a href="Aboutus.jsp">About us</a> 
  <a href="Home.jsp">Log out</a> 
</div>

	<%
		String id=request.getParameter("docid");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String special=request.getParameter("special");
		String pwd=request.getParameter("pwd");
		String cnfrmpwd=request.getParameter("cnfrmpwd");
	%>
	
<div class="d6">
<br><br><br><br><br>
	<form action="update" method="post">
		<b>Doctor id</b>	<input type="text" name="docid" value="<%= id%>" readonly><br>
		<b>Name</b>	<input type="text" name="name" value="<%= name %>" ><br>
		<b>Email</b>	<input type="text" name="email" value="<%= email %>" ><br>
		<b>Mobile</b>	<input type="text" name="mobile" value="<%= mobile %>" ><br>
		<b>Specialization</b>	<input type="text" name="special" value="<%= special %>" ><br>
		<b>Password</b>	<input type="text" name="pwd" value="<%= pwd %>" ><br>
		<b>Confirmed password</b>	<input type="text" name="cnfrmpwd" value="<%= cnfrmpwd %>" ><br>

	
	<input type="submit" name="submit" value="Update my profile" class="button">
	
	</form>
	
</div>	

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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