<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="w3.css">
<title>SHOP NEST-E</title>
<script type="text/javascript">
       function fun(val)
       {
    	   if(form.ui.value == "")
    		   {
    		   form.ui.focus();
    		   alert('User Id is required.');
    	   return false;  
    	   } 
       if(form.pwd.value == "")
    	   {
    	   form.pwd.focus();
    	   alert('password is required.');
    	   return false;
    	   
    	   }
       return true;
       }
       </script>
</head>
<body background="ov.jpg">
<form action="UserLog" method="post" name="form" onsubmit="return fun(this.value)">
<div class="w3-bar w3-text-white w3-center" style="width:100%; height: 120px;">
<h2 style="font-size: 40px; font-style: italic;">SHOP NEST-E</h2>
</div>
<br>
<div class="w3-bar " >
<div class="w3-button w3-text-white" ><a href="index.html" style="text-decoration: none;">Home </a></div>
</div>
<div class="w3-row " >
<div class="w3-col w3-container w3-quarter w3-white"></div>
<div class="w3-col w3-text-white w3-center w3-half">
<h2 style="font-size: 30px;"><b> User Login Page</b></h2>
</div>
</div>
<center>
<div class="w3-container w3-text-white w3-center" style="width: 350px; height:350px;">
<table class="w3-table">
<tr><td>
<b>Mail</b></td><td>
<input type="text" class="w3-text w3-hover-aqua" name="ui" placeholder="XXXXXXXX@XXXX.com"></td></tr>
<tr><td><b>Password</b></td><td>
<input type="password" class="w3-text w3-hover-aqua" name="pwd" placeholder="enter password"></td></tr>
</table>
<input type="submit" class="w3-button w3-text-White w3-hover-white" value="Login">
<input type="reset" class="w3-button w3-text-white w3-hover-white" value="Reset">
<br>
<a href="UserRegForm.jsp" style="text-decoration: none;">New User</a>
</div>
</center>
</form>
</body>
</html>