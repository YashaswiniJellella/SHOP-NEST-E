<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="w3.css">
<title>SHOP NEST-E</title>
</head>
<body background="ov.jpg">
<form action="Offer" method="post">
<div class="w3-bar w3-text-white w3-center" style="width:100%; height: 120px;">
<h2 style="font-size: 38px; font-style: italic; font-weight: bold;">SHOP NEST-E</h2>
</div>
<br>
<div class="w3-bar ">
<div class="w3-button w3-text-white" style="width: 275px;" >
<a href="Electronics.jsp" >Electronic Appliances </a></div>
<div class="w3-button w3-text-white" style="width: 275px;">
<a href="Kitchen.jsp" >Kitchen Appliances </a></div>
<div class="w3-button w3-text-white" style="width: 275px;">
<a href="Offer.jsp" >Offers </a></div>
<div class="w3-button w3-text-white" style="width: 275px;"><a href="index.html" >Logout </a></div>
</div>
<br>
<center>
<div class="w3-center w3-container w3-blue-gray" style="width: 700px; height: 200px;">
<br>
<table class="w3-table">
<tr><td>Product</td><td><select name="product" class="w3-select">
<option value="non">---select---</option>
<option value="watch">Watches</option>
<option value="mobile">Mobile</option>
<option value="laptop">Laptops</option>
<option value="cameras">Cameras</option>
<option value="tv">TV</option>
<option value="ricecooker">Rice Cooker</option>
<option value="oven">Microwave Oven</option>
<option value="mixer">Mixer Grinder</option>
<option value="gasstove">Gas Stove</option>
<option value="induction">Induction Stove</option>
<option value="backpacks">Back Packs</option>
<option value="travel">Traveler</option>
<option value="suitcase">Suit Case</option>
</select> </td></tr>
<tr><td>Discount</td><td>
<input type="text" name="dis" class="w3-input" placeholder = "enter in percentage(%)"></td></tr>
<!-- <tr><td>HDFC Bank</td><td><input type="text" name="hdfc" class="w3-input"></td></tr>
<tr><td>AXIS Bank</td><td><input type="text" name="axis" class="w3-input"></td></tr> -->
</table>
<input type="submit" class="w3-button w3-text-White w3-hover-white" value="Submit">
<input type="reset" class="w3-button w3-text-white w3-hover-white" value="Reset">
</div>
</center>
</form>
</body>
</html>