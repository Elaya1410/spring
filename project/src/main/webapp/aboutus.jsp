<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Smartphone Shop</title>
<link rel="stylesheet" href="NewFile.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<style>
body {
	font-family:Bradley Hand, cursive;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
<body>

	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		
			<p class="home"><a href="/home">Home</a> 
			
				<p class="mobilelist mobilelistnamedesc mobilelistnameasc mobilelistpricedesc mobilelistpriceasc"><a
				href="/mobilelist">Mobile</a>
			<p class="compare compareids"><a href="/compare">Compare</a>
			<p class="aboutus"><a href="/aboutus">About US</a>
		
	</div>
	
	<div id="main">
	<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>
	<h1 style="background-color: rgb(0, 0, 0);text-align:center; color:#ffff" >Abouts US</h1>
	
		
<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRwk9ehRwCXvCb9IP02EyqUz-ppXch-25QRBA&usqp=CAU" alt="Ilaya" style="width:100%">
      <div class="container">
        <h2>Ilaya</h2>
        <p class="title">CEO & Founder</p>
        <p>"Don't worry about failure; you only have to be right once."</p>
       
        <p style="backgroud-color:black">Contact</p>
         <p>ilaya1410@gmail.com</p>
         <p>044-4561230</p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRwk9ehRwCXvCb9IP02EyqUz-ppXch-25QRBA&usqp=CAU" alt="Ilaya" style="width:100%">
      <div class="container">
        <h2>John</h2>
        <p class="title">president</p>
        <p>"The circulation of confidence is better than the circulation of money."</p>
       
        <p style="backgroud-color:black">Contact</p>
         <p>john705@gmail.com</p>
         <p>044-78946230</p>
      </div>
    </div>
  </div>
   <div class="column">
    <div class="card">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSUu0xsavuhDNfqI86UdOa8sIM0XVKhAzIMlA&usqp=CAU" alt="Ilaya" style="width:100%">
      <div class="container">
        <h2>Mary</h2>
        <p class="title">Vice-president</p>
        <p>"Knowing what must be done does away with fear"</p>
       
        <p style="backgroud-color:black">Contact</p>
         <p>mary785@gmail.com</p>
         <p>9784561230</p>
      </div>
    </div>
  </div>
</div>
		
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