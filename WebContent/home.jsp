<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Tetris</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<%@include file="loginCheck.jspf" %>
	<div class="sidenav">
	
	  <a style="padding-top: 80px;" href="home.jsp">Home</a>
	  <a href="game.html">Play</a>
	  <a href="update.jsp">Change Info</a>
	  <a href="delete.jsp">Delete Account</a>
	</div>
	<div class="main">
	  <h3 style="font-size: 100px;">My Tetris !</h3>
		<p><p>
		<p style="font-size: 25px;">Hello, <%=id %>!</p>
		<p>
		<%
	if (id.equals("admin")) {
	%>
	<a style="font-size:25px;" href="listUser.jsp">User List</a><p>
	<%	
	}
	%>
	<input style="background-color: black; color: white; width: 70px; height: 50px;" type="button" value="Log out" onclick="location.href='logout.jsp'"><p>
	
	</div>
</body>
</html>