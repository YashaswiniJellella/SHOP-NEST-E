<%@page import="java.util.StringTokenizer"%>
<%@page import="com.mvdao.MvDao"%>
<%@page import="java.sql.ResultSet"%>
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
<div class="w3-bar w3-text-white w3-center" style="width:100%; height: 120px;">
<h2 style="font-size: 38px; font-style: italic; font-weight: bold;">SHOP NEST-E</h2>
</div>
<br>
<form action="Gini.jsp">
<%
 		session = request.getSession(false);
		String id = request.getParameter("id");
		String sql = "select * from luggage where Product='"+id+"';";
		ResultSet rs = MvDao.getLog(sql);
		String sql1 = "select * from offer where Product='"+id+"'";
		ResultSet rs1 = MvDao.getLog(sql1);
		String s2;
		int dis = 0,hdfc = 0,axis = 0;
		while(rs1.next()){
			dis = rs1.getInt(2);
			
		}
%>
<div class="w3-row">
<div class="w3-col w3-container w3-quarter w3-white"></div>
<div class="w3-col w3-container w3-quarter w3-white"></div>
<div class="w3-col w3-container w3-half">
<div class="w3-dropdown-hover">
<button class="w3-text-white w3-button w3-orange">Electronics </button>
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
<div class="w3-dropdown-content w3-bar-block w3-orange">
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
<div class="w3-row">
		<div class="w3-col w3-container w3-quarter">
		<input type="hidden" name="db" value="luggage">
		<input type="hidden" name="id" value="<%=id%>">
		</div>
		<div class="w3-col w3-container w3-half w3-text-white">
		<b>Gini Index:</b><select name="gi" class="w3-select w3-teal" style="width: 150px;">
		<option value="0">---Select---</option>
		<option value="1">0.1</option>
		<option value="3">0.3</option>
		<option value="5">0.5</option>
		<option value="7">0.7</option>
		</select>
		<input type="submit" value="Search" class="w3-button w3-text-White w3-hover-white">
		</div>
		</div>
		</form>
<%while(rs.next()){
	s2 = rs.getString(1);
	String s3 = "Product.jsp?id1="+s2+"&&db=luggage&&id="+id;
	%>
	<div class="w3-text-white w3-blue"
			style="display: inline-block; width: 320px; height: 210px;margin: 20px;">
	<table>
	<tr><td><table>
	<tr><td><%
	String s="photo.jsp?name="+s2+"&&db=luggage";
	%>
	<img src=<%=s %> height="200px" width="200px"></td></tr>
	</table></td><td>
	<table class="w3-table">
	<tr><td><a href=<%=s3 %>><%=rs.getString(1) %></a></td></tr>
	<tr><td><%=rs.getString(3) %></td></tr>
	<tr><td><%=rs.getString(4) %></td></tr>
	 <tr><td>Rs.<%=(rs.getInt(6)-((rs.getInt(6)*dis)/100))%></td></tr>
	 <tr><td style="text-decoration:line-through; ">(<%=rs.getInt(6)%>)</td></tr>
	 
	 <%-- <tr><td><%=hdfc %>% from HDFC Bank</td></tr>
	 <tr><td><%=axis %>% from Axis Bank</td></tr> --%>
	</table>
	</td></tr>
	</table>
</div>
<%} %> 
</body>
</html>