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
	<jsp:useBean id = "user" class="com.bean.User" scope="request"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>
	<div class="sidenav">
	
	  <a style="padding-top: 80px;" href="home.jsp">Home</a>
	  <a href="game.html">Play</a>
	  <a href="update.jsp">Change Info</a>
	  <a href="delete.jsp">Delete Account</a>
	</div>
	
	<div class="main">
        <h3 style="font-size: 50px;">Edit User</h3>
        <form style="margin-top: 50px; font-size: 25px;" action="editPro.jsp" method="post">

            ID  <input type="text" name="id" value="<jsp:getProperty property="id" name="user"/>"><br> 
        
            Password  <input type="password" name="passwd" value="<jsp:getProperty property="passwd" name="user"/>"><br>
        
            이름  <input type="text" name="name" value="<jsp:getProperty property="name" name="user"/>"><br>
        
            나이  <input type="number" name="age" min="0" max="200" value="<jsp:getProperty property="age" name="user"/>"><br>
        
            성별  <input type="radio" name="gender" value="남">남성 
        
                 <input type="radio" name="gender" value="여">여성<br>
        
            이메일  <input type="email" name="email" value="<jsp:getProperty property="email" name="user"/>"><p>
        
            <input style="background-color: black; color: white;width: 70px; height: 50px;" type="submit" value="EditUser">
        
        </form>
	</div>
</body>
</html>