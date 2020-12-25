<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>	Arctic Mobile Shope</title>
<link rel="stylesheet" href="NewFile.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<style>
body {
	
	background-image: url('https://cdn.wccftech.com/wp-content/uploads/2020/01/Xiaomi-Mi-CC9-Pro-1.jpg');
	
}
</style>

</head>

<body>

	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		
			<p class="home"><a href="/home">Home</a> 
			
				<p class="mobilelist mobilelistnamedesc mobilelistnameasc mobilelistpricedesc mobilelistpriceasc"><a
				href="/mobilelist">Mobile</a>
			<p class="compare compareids"><a href="/compare">Compare</a>
			<p class="aboutus"><a href="/aboutus">About US</a>
		
	</div>
		
	<div id=main >
		<span  style="font-size:30px;cursor:pointer;background-color:#ffff" onclick="openNav()">&#9776;</span> 
		
	<h1 style="color:#ffff;text-align:center;font-size:100px ">Arctic Mobile world </h1>
	</div>
<script>
	function openNav() {
		  document.getElementById("mySidenav").style.width = "250px";
		  document.getElementById("main").style.marginLeft = "250px";
		}

		function closeNav() {
		  document.getElementById("mySidenav").style.width = "0";
		  document.getElementById("main").style.marginLeft= "0";
		}
		
	</script>
</body>

</html>