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
<form action="Kitchen" method="post" enctype="multipart/form-data">
<div class="w3-bar w3-text-white w3-center" style="width:100%; height: 120px;">
<h2 style="font-size: 40px; font-style: italic;">SHOP NEST-E</h2>
</div>
<br>

<div class="w3-bar ">
<div class="w3-button w3-text-white" style="width: 275px;">
<a href="Electronics.jsp" >Electronic Appliances </a></div>
<div class="w3-button w3-text-white" style="width: 275px;">
<a href="Luggage.jsp" >Travelling Appliances </a></div>
<div class="w3-button w3-text-white" style="width: 275px;">
<a href="Offer.jsp" >Offers </a></div>
<div class="w3-button w3-text-white" style="width: 275px;"><a href="index.html">Logout </a></div>
</div>
<br>
<center> 
<div class="w3-container w3-text-white" style="width: 700px; height: 100%;">
<table class="w3-table">
<tr><td>Product</td><td><select name="pdt" class="w3-select">
<option value="non">---select---</option>
<option value="ricecooker">Rice Cooker</option>
<option value="oven">Microwave Oven</option>
<option value="mixer">Mixer Grinder</option>
<option value="gasstove">Gas Stove</option>
<option value="induction">Induction Stove</option>
</select> </td></tr>
<tr><td>Product Id</td><td><input type="text" name="pid" class="w3-input"></td></tr>
<tr><td>Product Name</td><td><input type="text" name="pname" class="w3-input"></td></tr>
<tr><td>Product Company</td><td><input type="text" name="pcom" class="w3-input"></td></tr>
<tr><td>Product Features</td><td><input type="text" name="pftr" class="w3-input"></td></tr>
<tr><td>Product Cost</td><td><input type="text" name="pcost" class="w3-input"></td></tr>
<tr><td>Product Image</td><td><input type="file" name="pimg" class="w3-file"></td></tr>
<tr><td>Quantity</td><td><input type="text" name="qun" class="w3-input"></td></tr>
<tr><td>Available Rating</td><td><input type="text" name="rate" class="w3-input"></td></tr>
</table>
<input type="submit" value="Submit" class="w3-button">
</div>
</center>
</form>
</body>
</html>