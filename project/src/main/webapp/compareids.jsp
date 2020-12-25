<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Smartphone Shop</title>
<link rel="stylesheet" href="../NewFile.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

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

	<div id="main">
		<span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;</span>
		<h1
			style="background-color: rgb(0, 0, 0); text-align: center; color: #ffff">Comparing
			Mobile</h1>

		<div class="container"
			style="background-image: url('https://i.pinimg.com/originals/da/f6/18/daf61862ec45445931d2216778e92af8.jpg'); padding: 0px">




			<div font-size="20px" class="center">
				<div class="table-responsive">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th scope="col">Specifications / Models</th>
								<th scope="col"><div class="form-group">
										<div for="ModelNo1">Mobile One</div>
										<select class="form-control" id="ModelNo1">
											<option value="">--Select One--</option>
											<c:forEach items="${SmartPhone}" var="smartphone">
												<option class="hide${smartphone.id}"
													value="${smartphone.id}"
													<c:choose>
													<c:when test="${ModelNo1 == smartphone.id}"> 
													 selected 
													</c:when>
												</c:choose>>${smartphone.mobile_name}</option>
											</c:forEach>
										</select>
									</div></th>
								<th scope="col"><div class="form-group">
										<div for="ModelNo2">Mobile Two</div>
										<select class="form-control" id="ModelNo2">
											<option value="">--Select One--</option>
											<c:forEach items="${SmartPhone}" var="smartphone">
												<option class="hide${smartphone.id}"
													value="${smartphone.id}"
													<c:choose>
													<c:when test="${ModelNo2 == smartphone.id}"> 
													 selected 
													</c:when>
												</c:choose>>${smartphone.mobile_name}</option>
											</c:forEach>
										</select>
									</div></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">RAM</th>
								<c:forEach items="${SmartPhoneCompare}" var="smartphone">
									<td>${smartphone.RAM}</td>
								</c:forEach>
							</tr>
							<tr>
								<th scope="row">Price</th>
								<c:forEach items="${SmartPhoneCompare}" var="smartphone">
									<td>${smartphone.price}</td>
								</c:forEach>
							</tr>
							<tr>
								<th scope="row">Storage</th>
								<c:forEach items="${SmartPhoneCompare}" var="smartphone">
									<td>${smartphone.storage}</td>
								</c:forEach>
							</tr>
							<tr>
								<th scope="row">Battery</th>
								<c:forEach items="${SmartPhoneCompare}" var="smartphone">
									<td>${smartphone.battery}</td>
								</c:forEach>
							</tr>
							<tr>
								<th scope="row">Screen Size</th>
								<c:forEach items="${SmartPhoneCompare}" var="smartphone">
									<td>${smartphone.scrensize}</td>
								</c:forEach>
							</tr>
							<tr>
								<th scope="row">Primary Camera</th>
								<c:forEach items="${SmartPhoneCompare}" var="smartphone">
									<td>${smartphone.primary_Camera}</td>
								</c:forEach>
							</tr>
							<tr>
								<th scope="row">Secondary Camera</th>
								<c:forEach items="${SmartPhoneCompare}" var="smartphone">
									<td>${smartphone.secondary_Camera}</td>
								</c:forEach>
							</tr>
							<tr>
								<th scope="row">Display Panel</th>
								<c:forEach items="${SmartPhoneCompare}" var="smartphone">
									<td>${smartphone.displaypannel}</td>
								</c:forEach>
							</tr>
							<tr>
								<th scope="row">Image</th>
								<c:forEach items="${SmartPhoneCompare}" var="smartphone">
									<td><a href="#"> <img src="${smartphone.image_url}"
											alt="${smartphone.mobile_name}" width="200" height="250">
									</a></td>
								</c:forEach>
							</tr>
							<tr>
								<th scope="row">Battery / Price Ranking</th>
								<c:forEach items="${SmartPhoneCompare}" var="smartphone">
									<td><c:choose>
											<c:when test="${ModelNo1 == smartphone.id}"> 
													 ${ModelNobmpp1} 
													</c:when>
											<c:when test="${ModelNo2 == smartphone.id}"> 
													 ${ModelNobmpp2} 
													</c:when>
										</c:choose></td>
								</c:forEach>
							</tr>
							<tr>
								<th scope="row">Storage / RAM Ranking</th>
								<c:forEach items="${SmartPhoneCompare}" var="smartphone">
									<td><c:choose>
											<c:when test="${ModelNo1 == smartphone.id}"> 
													 ${ModelNospr1} 
													</c:when>
											<c:when test="${ModelNo2 == smartphone.id}"> 
													 ${ModelNospr2} 
													</c:when>

										</c:choose></td>
								</c:forEach>
							</tr>
						</tbody>
					</table>
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
			document.getElementById("main").style.marginLeft = "0";
		}
		var changeFunction = function() {

			var parameterFilterModel = "";

			for (var i = 0; i < selectTags.length; i++) {
				if (parameterFilterModel == "") {
					parameterFilterModel = (null != selectTags[i].value
							&& "" != selectTags[i].value ? selectTags[i].value
							: "0");
				} else {
					parameterFilterModel += ","
							+ (null != selectTags[i].value
									&& "" != selectTags[i].value ? selectTags[i].value
									: "0");
				}
			}

			var locationhref = location.href.split("compare")
			if (parameterFilterModel == "0,0") {
				location.href = locationhref[0] + "compare";
			} else {
				location.href = locationhref[0] + "compareids/"
						+ parameterFilterModel;
			}
		}

		var selectTags = document.getElementsByTagName("select");

		for (var i = 0; i < selectTags.length; i++) {
			selectTags[i].addEventListener("change", changeFunction);
		}

		var addClass = function() {

			for (var i = 0; i < selectTags.length; i++) {
				if (null != selectTags[i].value && "" != selectTags[i].value) {
					for (var k = 0; k < selectTags.length; k++) {
						if (i != k) {
							var optionTags = selectTags[k]
									.getElementsByClassName("hide"
											+ selectTags[i].value);
							for (var j = 0; j < optionTags.length; j++) {
								optionTags[j].classList.add("hideCtl");
							}
						}
					}

				}

			}

			var menuTagClass = document.getElementsByClassName("menu-bar");
			for (var i = 0; i < menuTagClass.length; i++) {
				var menuTag = menuTagClass[i].getElementsByTagName("li");
				for (var j = 0; j < menuTag.length; j++) {
					menuTag[j].classList.remove("active");
					for (var k = 0; k < menuTag[j].classList.length; k++) {
						if (location.href.indexOf(menuTag[j].classList[k]) >= 0) {
							menuTag[j].classList.add("active");
						}
					}
				}
			}

		}

		window.onload = addClass();
	</script>



</body>
</html>