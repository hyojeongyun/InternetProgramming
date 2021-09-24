<%@page import="com.bean.User"%>
<%@page import="com.dao.UserDao" %>
<%@page import="com.db.DbUtil" %>
<%@page import="java.sql.*" %>
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
<%@include file="loginCheck.jspf" %>
<%
	UserDao userDao = new UserDao();
	User user = userDao.getUserById(id);
%>
<div class="sidenav">
	<a style="padding-top: 80px;" href="home.jsp">Home</a>
	  <a href="game.html">Play</a>
	</div>
	
	<div class="main">
        <h3 style="font-size: 50px;">회원수정</h3>
        <form style="margin-top: 100px; font-size: 25px;" action="updatePro.jsp" method="post">

            아이디 : <input type="text" name="id" value="<%=user.getId()%>" readonly><br> 
        
            패스워드 : <input type="password" name="passwd"><br>
        
            이름 : <input type="text" name="name" value="<%=user.getName()%>"><br>
        
            나이 : <input type="number" name="age" min="0" max="200" value="<%=user.getAge()%>"><br>
        
            성별 : <input type="radio" name="gender" value="남" 
     <% if(user.getGender() != null && user.getGender().equals("남")) { %> checked <% } %>>남성
     			   <input type="radio" name="gender" value="여" 
     <% if(user.getGender() != null && user.getGender().equals("여")) { %> checked <% } %>>여성<br>
        
            이메일 : <input type="email" name="email" value="<%=user.getEmail() %>"><p>
        
            <input style="background-color: black; color: white;width: 70px; height: 50px;" type="submit" value="회원수정">
        
        </form>
	</div>
</body>
</html>