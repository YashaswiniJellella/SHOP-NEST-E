<%@page import="com.mvdao.MvDao"%>
<%@page import="java.sql.*"%>
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
	<div class="w3-bar w3-text-white w3-center"
		style="width: 100%; height: 120px;">
		<h2 style="font-size: 38px; font-style: italic; font-weight: bold;">SHOP NEST-E</h2>
	</div>
	<%
		session = request.getSession(false);
		String pass = request.getParameter("iname");
		String sql1 = "delete from cart where ProductId='"+pass+"'";
		MvDao.deleteCart(sql1);
	%>
	<div class="w3-row">
		<div class="w3-col w3-container w3-quarter w3-white"></div>
		<div class="w3-col w3-container w3-quarter w3-white"></div>
		<div class="w3-col w3-container w3-half">
			<div class="w3-dropdown-hover">
				<button class="w3-text-white w3-button w3-orange">Electronics
				</button>
				<div class="w3-dropdown-content w3-bar-block">
					<a href="EAppliances.jsp?id=watch"
						class="w3-bar-item w3-blue w3-button">Watches</a> <a
						href="EAppliances.jsp?id=laptop"
						class="w3-bar-item w3-blue w3-button">Laptop</a> <a
						href="EAppliances.jsp?id=mobile"
						class="w3-bar-item w3-blue w3-button">Mobile</a> <a
						href="EAppliances.jsp?id=tv" class="w3-bar-item w3-blue w3-button">TVs</a>
					<a href="EAppliances.jsp?id=cameras"
						class="w3-bar-item w3-blue w3-button">Camera</a>
				</div>
			</div>
			<div class="w3-dropdown-hover">
				<button class="w3-text-white w3-button w3-orange">Kitchen</button>
				<div class="w3-dropdown-content w3-bar-block">
					<a href="KAppliances.jsp?id=gasstove"
						class="w3-bar-item w3-blue w3-button">Gas Stove</a> <a
						href="KAppliances.jsp?id=induction"
						class="w3-bar-item w3-blue w3-button">Induction Stove</a> <a
						href="KAppliances.jsp?id=oven"
						class="w3-bar-item w3-blue w3-button">Microwave Oven</a> <a
						href="KAppliances.jsp?id=mixer"
						class="w3-bar-item w3-blue w3-button">Mixer Grinder</a> <a
						href="KAppliances.jsp?id=ricecooker"
						class="w3-bar-item w3-blue w3-button">Rice Cooker</a>
				</div>
			</div>
			<div class="w3-dropdown-hover">
				<button class="w3-text-white w3-button w3-orange">Travel</button>
				<div class="w3-dropdown-content w3-bar-block">
					<a href="LAppliances.jsp?id=backpacks"
						class="w3-bar-item w3-blue w3-button">Back Pack</a> <a
						href="LAppliances.jsp?id=travel"
						class="w3-bar-item w3-blue w3-button">Traveller</a> <a
						href="LAppliances.jsp?id=suitcase"
						class="w3-bar-item w3-blue w3-button">SuitCase</a>
				</div>
			</div>
			<div class="w3-dropdown-hover">
				<button class="w3-text-white w3-button w3-orange">
					Hi
					<%=session.getAttribute("user")%></button>
				<div class="w3-dropdown-content w3-bar-block">
					<a href="Profile.jsp" class="w3-bar-item w3-blue w3-button">My
						Account</a> <a href="Offers.jsp" class="w3-bar-item w3-blue w3-button">Offers</a>
					<a href="CartDisplay.jsp" class="w3-bar-item w3-blue w3-button">Cart</a> <a
						href="Orders.jsp" class="w3-bar-item w3-blue w3-button">Orders</a>
					<a href="Logout.jsp" class="w3-bar-item w3-blue w3-button">Logout</a>
				</div>
			</div>
		</div>
	</div>
	<%
		int tot = 0;
	%>
	<center>
		<table class="w3-table w3-bordered w3-hoverable w3-text-white"
			style="width: 30%;">
			<tr>
				<th>ProductId</th>
				<th>Cost</th>
				<th>Remove</th>
			</tr>
	
	<%
	String sql = "select * from cart";
	ResultSet rs = MvDao.getLog(sql);
	try{
		while(rs.next())
		{ 	%>
		
			<tr>
				<td><%=rs.getString(2)%></td>
				<td>Rs.<%=rs.getInt(3)%></td>
				<td><a href="DeleteCart.jsp?iname="<%=rs.getString(2)%>><input
						type=button value=delete class="w3-button"></a></td>
			</tr>
			<%
				tot = tot + rs.getInt(3);
					}
			%>
			<tr>
				<td>Total Cost</td>
				<td><%=tot%></td>
				<td><a href="Cart"><input type="button" value="Pay"
						class="w3-button"></a></td>
			</tr>
		</table>
	</center>
	<%
		} catch (Exception e) {
	%>
	<center>
		<table class="w3-table w3-bordered w3-hoverable w3-text-white"
			style="width: 30%;">
			<tr>
				<th>ProductId</th>
				<th>Cost</th>
				<th>Remove</th>
			</tr>
			<tr>
				<td>Total Cost</td>
				<td><%=tot%></td>
				<td><a href="Cart"><input type="button" value="Pay"
						class="w3-button"></a></td>
			</tr>
		</table>
	</center>
	<%
		}
	%>
</body>
</html>