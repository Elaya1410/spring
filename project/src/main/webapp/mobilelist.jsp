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
<body>


	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>

		<p class="home">
			<a href="/home">Home</a>
		<p
			class="mobilelist mobilelistnamedesc mobilelistnameasc mobilelistpricedesc mobilelistpriceasc">
			<a href="/mobilelist">Mobile</a>
		<p class="compare compareids">
			<a href="/compare">Compare</a>
		<p class="aboutus">
			<a href="/aboutus">About US</a>
	</div>

	<div id=main>
		<span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;</span>
		<h1
			style="background-color: rgb(0, 0, 0); text-align: center; color: #ffff">Mobile
			List</h1>
		<div class="container"
			style="background-image: url('https://i.pinimg.com/originals/da/f6/18/daf61862ec45445931d2216778e92af8.jpg'); padding: 0px">


			<p class="lead"></p>

			<div class="center sortBy">
				<button class="col-md-1 price"
					style="font-family: Bradley Hand, cursive">
					Price
					<svg fill="currentColor" preserveAspectRatio="xMidYMid meet"
						height="1em" width="1em" viewBox="0 0 11 17" class="ogwO6 KJMn5"
						style="vertical-align: middle">
				<title>Sort order</title><g>
				<polygon fill="#FFFFFF"
							points="4.1,17.3 -0.7,12.5 0.7,11.1 2.1,12.5 2.1,0 4.1,0"></polygon>
				<polygon fill="#B3B3B3"
							points="8.3,16.8 6.3,16.8 6.3,-0.6 11.2,4.3 9.7,5.7 8.3,4.3"></polygon></g></svg>
				</button>
				<button class="col-md-1 name"
					style="font-family: Bradley Hand, cursive">
					Name
					<svg fill="currentColor" preserveAspectRatio="xMidYMid meet"
						height="1em" width="1em" viewBox="0 0 11 17" class="ogwO6 KJMn5"
						style="vertical-align: middle">
				<title>Sort order</title><g>
				<polygon fill="#FFFFFF"
							points="4.1,17.3 -0.7,12.5 0.7,11.1 2.1,12.5 2.1,0 4.1,0"></polygon>
				<polygon fill="#B3B3B3"
							points="8.3,16.8 6.3,16.8 6.3,-0.6 11.2,4.3 9.7,5.7 8.3,4.3"></polygon></g></svg>
				</button>
			</div>
			<div class="center smartphone">
				<c:forEach items="${SmartPhone}" var="smartphone">
					<div class="media">
						<br /> <br />
						<div>

							<table class="table table-striped table-hover">
								<thead>
									<tr>
										<th scope="col" style="width: 20%;"><div class="col-md-2">${smartphone.mobile_name}</div></th>
										<th><div>
												<a href="#"> <img src="${smartphone.image_url}"
													alt="${smartphone.mobile_name}" width="200" height="250">
												</a>
											</div></th>

										<th scope="col" style="width: 20%;">

											<div class="col-md-6">
											<div>
											
													<strong>SIM:</strong>DUAL</div>

												<div>
												<div>
												<p>
													<strong>RAM:</strong>${smartphone.RAM}</div>

												<div>
													<p>
														<strong>Storage:</strong>${smartphone.storage}
												</div>
												<div>
													<p>
														<strong>Battery:</strong>${smartphone.battery}
												</div>
												<div>
													<p>
														<strong>Scrensize:</strong>${smartphone.scrensize}
												</div>
											</div>
										</th>
										<th style="width: 20%">
											<div>
												<p>
													<strong>Camera</strong>
												<div class="row">
													<div class="col-md-1"></div>
													<div class="col-md-9">
														<strong>Primary:</strong> ${smartphone.primary_Camera}
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-1"></div>
												<div class="col-md-9">
													<div>
														<strong>Secondary:</strong> ${smartphone.secondary_Camera}
													</div>
												</div>
											</div>
											<div>
												<p>
													<strong>Displaypannel:</strong>${smartphone.displaypannel}
											</div>
										</th>
										<th style="width: 20% ">
											<div>
												<p>
													<strong>Price</strong>
												<div class="row">
													<div class="col-md-1"></div>
													<div class="col-md-9">Rs.${smartphone.price}</div>
												</div>
											</div>
										</th>

										<th s style="width: 20%;"><div>
												<p>
													<strong>Colour</strong>
													<div class="row">
													<div class="col-md-1"></div>
													<div class="col-md-9">${smartphone.available_colour}</div>
												</div>
												</div>
											</th>

									</tr>
								</thead>
								<tbody>

								</tbody>
							</table>
						</div>
					</div>


					<br />
					<br />
				</c:forEach>
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
			document.getElementById("main").style.marginLeft = "0";
		}

		var clickFunction = function(element) {

			if (element.currentTarget.classList.contains("asc")) {
				element.currentTarget.classList.add("desc");
				element.currentTarget.classList.remove("asc");
			} else {
				element.currentTarget.classList.add("asc");
				element.currentTarget.classList.remove("desc");
			}

			if (element.currentTarget.classList.contains("name")) {
				if (element.currentTarget.classList.contains("asc")) {
					location.href = "mobilelistnameasc";
				} else if (element.currentTarget.classList.contains("desc")) {
					location.href = "mobilelistnamedesc";
				}
			} else if (element.currentTarget.classList.contains("price")) {
				if (element.currentTarget.classList.contains("asc")) {
					location.href = "mobilelistpriceasc";
				} else if (element.currentTarget.classList.contains("desc")) {
					location.href = "mobilelistpricedesc";
				}
			}

		}

		var buttonTags = document.getElementsByTagName("button");

		for (var i = 0; i < buttonTags.length; i++) {
			buttonTags[i].addEventListener("click", clickFunction);
		}

		var addClass = function() {

			var svgTags = document.getElementsByTagName("svg");

			for (var i = 0; i < svgTags.length; i++) {
				svgTags[i].classList.remove("KJMn5");
			}

			var buttonTags = document.getElementsByTagName("button");

			for (var i = 0; i < buttonTags.length; i++) {
				buttonTags[i].classList.remove("asc");
				buttonTags[i].classList.remove("desc");
			}

			if (location.href.indexOf("mobilelistnamedesc") >= 0) {

				var buttonNameTags = document.getElementsByTagName("button");

				for (var i = 0; i < buttonNameTags.length; i++) {

					if (buttonNameTags[i].classList.contains("name")) {
						buttonNameTags[i].classList.add("desc");
						buttonNameTags[i].classList.remove("asc");
					}

					if (buttonNameTags[i].classList.contains("price")) {
						var buttonsvgClassTag = buttonNameTags[i]
								.getElementsByTagName("svg");

						for (var k = 0; k < buttonsvgClassTag.length; k++) {
							buttonsvgClassTag[k].classList.add("KJMn5");
						}

					}

				}
			} else if (location.href.indexOf("mobilelistnameasc") >= 0) {

				var buttonNameTags = document.getElementsByTagName("button");

				for (var i = 0; i < buttonNameTags.length; i++) {

					if (buttonNameTags[i].classList.contains("name")) {
						buttonNameTags[i].classList.add("asc");
						buttonNameTags[i].classList.remove("desc");
					}

					if (buttonNameTags[i].classList.contains("price")) {
						var buttonsvgClassTag = buttonNameTags[i]
								.getElementsByTagName("svg");

						for (var k = 0; k < buttonsvgClassTag.length; k++) {
							buttonsvgClassTag[k].classList.add("KJMn5");
						}

					}

				}
			} else if (location.href.indexOf("mobilelistpricedesc") >= 0) {

				var buttonNameTags = document.getElementsByTagName("button");

				for (var i = 0; i < buttonNameTags.length; i++) {

					if (buttonNameTags[i].classList.contains("price")) {
						buttonNameTags[i].classList.add("desc");
						buttonNameTags[i].classList.remove("asc");
					}

					if (buttonNameTags[i].classList.contains("name")) {
						var buttonsvgClassTag = buttonNameTags[i]
								.getElementsByTagName("svg");

						for (var k = 0; k < buttonsvgClassTag.length; k++) {
							buttonsvgClassTag[k].classList.add("KJMn5");
						}

					}

				}

			} else if (location.href.indexOf("mobilelistpriceasc") >= 0) {

				var buttonNameTags = document.getElementsByTagName("button");

				for (var i = 0; i < buttonNameTags.length; i++) {

					if (buttonNameTags[i].classList.contains("price")) {
						buttonNameTags[i].classList.add("asc");
						buttonNameTags[i].classList.remove("desc");
					}

					if (buttonNameTags[i].classList.contains("name")) {
						var buttonsvgClassTag = buttonNameTags[i]
								.getElementsByTagName("svg");

						for (var k = 0; k < buttonsvgClassTag.length; k++) {
							buttonsvgClassTag[k].classList.add("KJMn5");
						}

					}

				}

			}

			var svgClassAscTags = document.getElementsByClassName("asc");

			for (var i = 0; i < svgClassAscTags.length; i++) {

				var svgClassAscTag = svgClassAscTags[i]
						.getElementsByTagName("svg");

				for (var j = 0; j < svgClassAscTag.length; j++) {
					svgClassAscTag[j].classList.add("fwICw");
				}

			}

			var svgClassDescTags = document.getElementsByClassName("desc");

			for (var i = 0; i < svgClassDescTags.length; i++) {

				var svgClassDescTag = svgClassDescTags[i]
						.getElementsByTagName("svg");

				for (var j = 0; j < svgClassDescTag.length; j++) {
					svgClassDescTag[j].classList.remove("fwICw");
				}

			}
		}

		window.onload = addClass();
	</script>

</body>
</html>