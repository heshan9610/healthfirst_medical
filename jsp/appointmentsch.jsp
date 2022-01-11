<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Mycss.css">
<meta charset="ISO-8859-1">
<title>Appointment details</title>
</head>
<body id="body7">

<div class="topnav">
  <a href="Home2.jsp">Home</a>
  <a href="Appointments.jsp">Appointments</a>
  <a href="Diagnostics.jsp">Diagnostics</a>
  <a href="Aboutus.jsp">About us</a> 
  <a href="Home.jsp">Log out</a>  
</div>  

<div class="d1">
<h2>APPOINTMENT DETAILS</h2>
<div class="d5">
<div class="d4">
	<table>
	<c:forEach var="app" items="${appDetails}">

	<c:set var="appID" value="${app.appID}"/>
	<c:set var="patientID" value="${app.patientID}"/>
	<c:set var="name" value="${app.name}"/>
	<c:set var="status" value="${app.status}"/>
	<c:set var="payment" value="${app.payment}"/>

	
	<tr>
		<td><b>Appointment ID</b></td>
		<td>${app.appID}</td>
	</tr>
	<tr>
		<td><b>Patient ID</b></td>
		<td>${app.patientID}</td>
	</tr>
	<tr>
		<td><b>Patient name</b></td>
		<td>${app.name}</td>
	</tr>
	<tr>
		<td><b>Patient status</b></td>
		<td>${app.status}</td>
	</tr>
	<tr>
		<td><b>Patient's Payment</b> </td>
		<td>${app.payment}</td>
	</tr>
	</c:forEach>
	</table>
	
</div>	
<br>	
	<c:url value="UpdateAppointment.jsp" var="appupdate">
		<c:param name="aid" value="${appID}"/>
		<c:param name="pid" value="${patientID}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="status" value="${status}"/>
		<c:param name="payment" value="${payment}"/>

	</c:url>
	
	
	<a href="${appupdate}">
		<input type="button" name="update" value="Update data" class="button">
	</a>
	
	<br>
	<c:url value="DeleteAppointment.jsp" var="appdelete">
		<c:param name="aid" value="${appID}"/>
		<c:param name="pid" value="${patientID}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="status" value="${status}"/>
		<c:param name="payment" value="${payment}"/>
	
	</c:url>
	
	 
	<a href="${appdelete}">
		<input type="button" name="delete" value="Delete data" class="button">
	</a>
</div>	
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