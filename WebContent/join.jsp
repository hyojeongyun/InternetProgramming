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
        <h3 style="font-size: 50px;">Sign in</h3>
        <form style="margin-top: 50px; font-size: 25px;" action="joinPro.jsp" method="post">

            ID  <input type="text" name="id"><br> 
        
            Password  <input type="password" name="passwd"><br>
        
            이름  <input type="text" name="name"><br>
        
            나이  <input type="number" name="age" min="0" max="200"><br>
        
            성별  <input type="radio" name="gender" value="남">남성 
        
                 <input type="radio" name="gender" value="여">여성<br>
        
            이메일  <input type="email" name="email"><p>
        
            <input style="background-color: black; color: white;width: 70px; height: 50px;" type="submit" value="Sign in">
        
        </form>
	</div>
</body>
</html>