<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="w3.css">
<title>SHOP NEST-E</title>
<style type="text/css">
a {
	text-decoration: none;
}
.mySlides {display:none;}
</style>
</head>
<body background="ov.jpg">
<div class="w3-bar w3-text-white w3-center" style="width:100%; height: 120px;">
<h2 style="font-size: 38px; font-style: italic; font-weight: bold;">SHOP NEST-E</h2>
</div>
<br>
<%
 session = request.getSession(false);
%>
<div class="w3-row">
<div class="w3-col w3-container w3-quarter w3-white"></div>
<div class="w3-col w3-container w3-quarter w3-white"></div>
<div class="w3-col w3-container w3-half">
<div class="w3-dropdown-hover">
<button class="w3-text-white w3-button w3-orange">Electronics</button>
<div class="w3-dropdown-content w3-bar-block">
<a href="EAppliances.jsp?id=watch" class="w3-bar-item w3-blue w3-button">Watches</a>
<a href="EAppliances.jsp?id=laptop" class="w3-bar-item w3-blue w3-button">Laptop</a>
<a href="EAppliances.jsp?id=mobile" class="w3-bar-item w3-blue w3-button">Mobile</a>
<a href="EAppliances.jsp?id=tv" class="w3-bar-item w3-blue w3-button">TVs</a>
<a href="EAppliances.jsp?id=cameras" class="w3-bar-item w3-blue w3-button">Camera</a>
</div>
</div>
<div class="w3-dropdown-hover">
<button class="w3-text-white w3-button w3-orange">Kitchen</button>
<div class="w3-dropdown-content w3-bar-block">
<a href="KAppliances.jsp?id=gasstove" class="w3-bar-item w3-blue w3-button">Gas Stove</a>
<a href="KAppliances.jsp?id=induction" class="w3-bar-item w3-blue w3-button">Induction Stove</a>
<a href="KAppliances.jsp?id=oven" class="w3-bar-item w3-blue w3-button">Microwave Oven</a>
<a href="KAppliances.jsp?id=mixer" class="w3-bar-item w3-blue w3-button">Mixer Grinder</a>
<a href="KAppliances.jsp?id=ricecooker" class="w3-bar-item w3-blue w3-button">Rice Cooker</a>
</div>
</div>
<div class="w3-dropdown-hover">
<button class="w3-text-white w3-button w3-orange">Travel</button>
<div class="w3-dropdown-content w3-bar-block">
<a href="LAppliances.jsp?id=backpacks" class="w3-bar-item w3-blue w3-button">Back Pack</a>
<a href="LAppliances.jsp?id=travel" class="w3-bar-item w3-blue w3-button">Traveller</a>
<a href="LAppliances.jsp?id=suitcase" class="w3-bar-item w3-blue w3-button">SuitCase</a>
</div>
</div>
<div class="w3-dropdown-hover">
<button class="w3-text-white w3-button w3-orange">Hi <%= session.getAttribute("user") %></button>
<div class="w3-dropdown-content w3-bar-block">
<a href="Profile.jsp" class="w3-bar-item w3-blue w3-button">My Account</a>
<a href="Offers.jsp" class="w3-bar-item w3-blue w3-button">Offers</a>
<a href="CartDisplay.jsp" class="w3-bar-item w3-blue w3-button">Cart</a>
<a href="Orders.jsp" class="w3-bar-item w3-blue w3-button">Orders</a>
<a href="Logout.jsp" class="w3-bar-item w3-blue w3-button">Logout</a>
</div>
</div>
</div>
</div>
<div class="w3-content w3-section" style="max-width:50%;max-height: 400px;">
  <img class="mySlides" src="img1.jpg" style="width:100%;height: 400px;">
  <img class="mySlides" src="img2.jpg" style="width:100%;height: 400px;">
  <img class="mySlides" src="img3.jpg" style="width:100%;height: 400px;">
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
</body>
</html>