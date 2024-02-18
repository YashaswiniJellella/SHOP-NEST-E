<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<link rel="stylesheet" href="w3.css">
<script type="text/javascript">
function validatePassword() {
    var p = document.getElementById('PW').value,
        errors = [];
    if (p.length < 8) {
        errors.push("Your password must be at least 8 characters"); 
    }
    if(p.search(/[!@#$%^&*]/) <0)
    	{
    	errors.push("Your password must contain at least one Special Characters ! # $ % & ?.");
    	} 
    if (p.search(/[a-z]/i) < 0) {
        errors.push("Your password must contain at least one letter.");
    }
    if (p.search(/[0-9]/) < 0) {
        errors.push("Your password must contain at least one digit."); 
    }
    if (errors.length > 0) {
        alert(errors.join("\n"));
        return false;
    }
    return true;
}
function validateForm() {
     x = document.forms["myForm"]["fn"].value;
    if (x == "") {
        alert("Please enter first name");
        document.getElementById("fn").style.border = "1px solid red";
        return false;
    }
     x = document.forms["myForm"]["ln"].value;
    if (x == "") {
        alert("Please enter last name");
        document.getElementById("ln").style.border = "1px solid red";
        return false;
    }
    x = document.forms["myForm"]["PW"].value;
    if (x == "") {
        alert("Please enter password");
        document.getElementById("PW").style.border = "1px solid red";
        return false;
    }
    x = document.forms["myForm"]["CPW"].value;
    if (x == "") {
        alert("Please enter confirm password");
        document.getElementById("CPW").style.border = "1px solid red";
        return false;
    }
     x = document.forms["myForm"]["mail"].value;
    if (x == "") {
        alert("Please enter mail_Id");
        document.getElementById("mail").style.border = "1px solid red";
        return false;
    }
    x = document.forms["myForm"]["gen"].value;
    if (x == "") {
        alert("Please select gender");
        document.getElementById("gen").style.border = "1px solid red";
        return false;
    }
    x = document.forms["myForm"]["dob"].value;
    if (x == "") {
        alert("Please enter Date Of Birth");
        document.getElementById("dob").style.border = "1px solid red";
        return false;
    }
    x = document.forms["myForm"]["mob"].value;
    if (x == "") {
        alert("Please enter mobile number");
        document.getElementById("mob").style.border = "1px solid red";
        return false;
    }
    x = document.forms["myForm"]["des"].value;
    if (x == "") {
        alert("Please enter designation");
        document.getElementById("des").style.border = "1px solid red";
        return false;
    }
}
function validateMobile() {
    var p = document.getElementById('mob').value,
        errors = [];
    if (p.length < 10) {
        errors.push("Mobile number should be minimum 10 digits"); 
    }
    if (p.length > 12) {
        errors.push("Mobile number should not exceed maximum of 12 digits"); 
    }
    if(p.search(/[!@#$%^&*]/) >0)
	{
	errors.push("Your password must contain at least one Special Characters ! # $ % & ?.");
	} 
	if (p.search(/[a-z]/i) > 0) {
    errors.push("Your Mobile Number must contain at least one letter.");
	}
    if (errors.length > 0) {
        alert(errors.join("\n"));
        return false;
    }
   
    return true;
}
function validateMail() {
    var x = document.getElementById('mail').value;
    errors = [];
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address. Eg :: xxxxxx@xxxxx.xxx");
        return false;
    }
}
function compass()
{
	var x = document.getElementById('PW').value;
	var y = document.getElementById('CPW').value;
	if(x==y)
	{
		return true;
	}else{
		alert("Password and Confirm Password must watch");
		return false;
	}
}
</script>
</head>
<body background="ov.jpg">
<form action="UserRegistration" method="post" name="myForm" enctype="multipart/form-data" onsubmit="return validateForm()">
<div class="w3-bar w3-text-white w3-center" style="width:100%; height: 120px;">
<h2 style="font-size: 38px; font-style: italic; font-weight: bold;">SHOP NEST-E</h2>
</div>
<br>
<center> 
<div class="w3-bar">
<div class="w3-text-white w3-button" style="width: 350px;">
<a href="index.html" >Home </a></div>
<div class="w3-text-white w3-button w3-text-white" style="width: 350px;">
<a href="UserLog.jsp" >Login </a></div>
</div>
<br>
<div class="w3-row " >
<div class="w3-col w3-container w3-quarter w3-white"></div>
<div class="w3-col w3-text-white w3-center w3-half">
<h2 style="font-size: 25px;"><b> Registration Form</b></h2>
</div>
</div>
<br>
<div class="w3-container w3-text-white" style="width: 750px; height: 100%;">
<table class="w3-table">
<tr><td><b style="font-size: 20px;">First Name</b></td><td><input type="text" name="fn" class="w3-input" id=fn placeholder="enter first name"></td></tr>
<tr><td><b style="font-size: 20px;">Last Name</b></td><td><input type="text" name="ln" class="w3-input" id=ln placeholder="enter last name"></td></tr>
<tr><td><b style="font-size: 20px;">Email</b></td><td><input type="text" name="email" id=mail class="w3-input" placeholder="XXXXXXXX@XXXX.com" onblur="validateMail()"></td></tr>
<tr><td><b style="font-size: 20px;">Password</b></td><td><input type="password" name="pwd" id=PW  class="w3-input" placeholder="enter password" onblur="validatePassword()"></td></tr>
<tr><td><b style="font-size: 20px;">Confirm Password</b></td><td><input type="password" name="cpwd" id=CPW class="w3-input" placeholder="enter confirm password" onblur="compass()"></td></tr>
<tr><td><b style="font-size: 20px;">Mobile</b></td><td><input type="text" name="mob" id=mob class="w3-input" placeholder="enter mobile number" onblur="validateMobile()" maxlength="10"></td></tr>
<tr><td><b style="font-size: 20px;">Gender</b></td><td><input type="radio" name="gen" value="Male" class="w3-radio">Male<input type="radio" name="gen" value="Female" class="w3-radio">Female</td></tr>
<tr><td><b style="font-size: 20px;">DOB</b></td><td><input type="text" name="dob" id=dob class="w3-input"></td></tr>
<tr><td><b style="font-size: 20px;">Address</b></td><td><textarea rows="3" cols="52" class="w3-textarea" name="add"></textarea>
 <tr><td><b style="font-size: 20px;">Profile Picture</b></td> <td><input type="file" name="photo" size="20" class="w3-file"><td></tr> 
</table>
<input type="submit" value="Register" class="w3-button" id="sub">
<input type="reset" value="Reset" class="w3-button">
</div>
</center>
</form>
</body>
</html>