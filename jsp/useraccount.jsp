<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Mycss.css">
<meta charset="ISO-8859-1">
<title>Profile details</title>
</head>
<body id="body2">

<div class="topnav">
  <a href="Home2.jsp">Home</a>
  <a href="Appointments.jsp">Appointments</a>
  <a href="Diagnostics.jsp">Diagnostics</a>
  <a class="active" href="#">Profile</a>
  <a href="Aboutus.jsp">About us</a> 
  <a href="Home.jsp">Log out</a> 
</div>

<div class="d1">
<h2>PROFILE DETAILS</h2>
<div class="d2">
<div class="d3">	
	<table>
	<c:forEach var="doc" items="${docDetails}">
	
	<c:set var="id" value="${doc.id}"/>
	<c:set var="name" value="${doc.name}"/>
	<c:set var="email" value="${doc.email}"/>
	<c:set var="mobile" value="${doc.mobile}"/>
	<c:set var="special" value="${doc.special}"/>
	<c:set var="pwd" value="${doc.pwd}"/>
	<c:set var="cnfrmpwd" value="${doc.cnfrmpwd}"/>

	<tr>
		<td><b>Doctor ID</b></td>
		<td>${doc.id}</td>
	</tr>
	<tr>
		<td><b>Doctor name</b></td>
		<td>${doc.name}</td>
	</tr>
	<tr>
		<td><b>Doctor email</b></td>
		<td>${doc.email}</td>
	</tr>
	<tr>
		<td><b>Doctor mobile</b></td>
		<td>${doc.mobile}</td>
	</tr>
	<tr>
		<td><b>Doctor specialization</b></td>
		<td>${doc.special}</td>
	</tr>
	<tr>
		<td><b>Doctor password</b></td>
		<td>${doc.pwd}</td>
	</tr>
	<tr>
		<td><b>Confirmed password</b></td>
		<td>${doc.cnfrmpwd}</td>
	</tr>

	</c:forEach>
	</table>
</div>
<br><br>
	<c:url value="UpdateDoctor.jsp" var="docupdate">
		<c:param name="docid" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="mobile" value="${mobile}"/>
		<c:param name="special" value="${special}"/>
		<c:param name="pwd" value="${pwd}"/>
		<c:param name="cnfrmpwd" value="${cnfrmpwd}"/>	
	</c:url>
	
	<a href="${docupdate}">
		<input type="button" name="update" value="Update data" class="button">
	</a>
	
	
	<c:url value="DeleteDoctor.jsp" var="docdelete">
		<c:param name="docid" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="mobile" value="${mobile}"/>
		<c:param name="special" value="${special}"/>
		<c:param name="pwd" value="${pwd}"/>
		<c:param name="cnfrmpwd" value="${cnfrmpwd}"/>	
	</c:url>
	
	<a href="${docdelete}">
		<input type="button" name="delete" value="Delete profile" class="button">
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