<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta  http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Tetris</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="sidenav">
	
	  <a style="padding-top: 80px;" href="index.jsp">Home</a>
	  <a href="login.jsp">Log in</a>
	  <a href="join.jsp">Sign in</a>
	  <a href="#">Play</a>
	</div>
	
	<div class="main">
        <h3 style="font-size: 50px;">Log in</h3>
        <form style="margin-top: 50px; font-size: 25px;" action="loginPro.jsp" method="post">

            ID <input type="text" name="id"><p>
        
            Password <input type="password" name="passwd"><p><p>
        
            <input style="background-color: black; color: white;width: 70px; height: 50px;" type="submit" value="Log in">
        </form>
	</div>
</body>
</html>