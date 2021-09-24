<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="loginCheck.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Tetris</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="sidenav">
		<a style="padding-top: 80px;" href="home.jsp">Home</a>
	  <a href="game.html">Play</a>
	</div>
	
	<div class="main">
        <h3 style="font-size: 50px;">회원 탈퇴</h3>
        <form style="margin-top: 100px; font-size: 25px;" action="deletePro.jsp" method="post">

            아이디: <input type="text" name="id" value="<%=id%>" readonly="readonly"><p>
        
            패스워드: <input type="password" name="passwd"><p><p>
        
            <input style="background-color: black; color: white;width: 70px; height: 50px;" type="submit" value="탈퇴">
        </form>
	</div>
</body>
</html>