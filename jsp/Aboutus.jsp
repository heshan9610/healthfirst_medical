<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<script>
	function showTab(tabNumber){
		document.getElementsByClassName("show")[0].classList.add("hide");
		document.getElementsByClassName("show")[0].classList.remove("show");
		document.getElementById("tabcontent-" + tabNumber).classList.add("show");
		document.getElementById("tabcontent-" + tabNumber).classList.remove("hide");
		document.getElementsByClassName("active")[0].classList.remove("active");
		document.getElementById("tab-" + tabNumber).classList.add("active");
	}
</script>

<link rel="stylesheet" href="Mycss.css">
<meta charset="ISO-8859-1">
<title>About us</title>
</head>
<body id="body13">

<div class="topnav">
  <a href="Home2.jsp">Home</a>
  <a href="Appointments.jsp">Appointments</a>
  <a href="Diagnostics.jsp">Diagnostics</a>
  <a class="active" href="Aboutus.jsp">About us</a>
  <a href="Home.jsp">Log out</a>  
</div> 


		<div class = "title">
			About Health First.....
			<p id = "about">Health First is a re known Health care service providing institution which has it's excellence over the Colombo city limit for more than two decades.
			Currently we are operating with our staff of 25 government certified medical officers, nurses and other health care personnel.
			Visit us for all your health care needs and have them fulfilled for fair prices.<br><br>
			We are proud to be associated with you with a high level of responsibility and service of your choice.</p>
		<br>
		</div>
		<div class = "container">
			<ul class = "tablinks"> 
				<li id = "tab-1" onclick= "showTab(1)" class = "active">Vision</li>
				<li id = "tab-2" onclick= "showTab(2)">Mission</li>
			</ul>
				
			<div class = "tabcontents">
				<div id= "tabcontent-1" class = "show">
					<p>Making you feel great in health and comfort.</p>
				</div>
				<div id = "tabcontent-2" class = "hide">
					<p>Our mission is to provide outstanding service, a satisfied experience for you.</p>
				</div>
			</div>
		</div> 


</body>
</html>