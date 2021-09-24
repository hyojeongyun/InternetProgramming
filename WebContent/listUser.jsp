<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.bean.User" %>
<%@page import="java.util.List"%>
<%@page import="com.dao.UserDao"%>
<%@page import="java.sql.*"%>
<%@page import="com.db.DbUtil"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Tetris</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<%
	String id = (String) session.getAttribute("id");
	if (id == null || !id.equals("admin")) {
		response.sendRedirect("index.jsp");
		return;
	}
	UserDao userDao = new UserDao();
	List<User> list = null;
	list = userDao.getUsers();
%>	
    <div class="sidenav">
	  <a style="padding-top: 80px;" href="home.jsp">Home</a>
	  <a href="game.html">Play</a>
	  <a href="update.jsp">Change Info</a>
	  <a href="delete.jsp">Delete Account</a>
	</div>
	<div class="main">
		    <h3 style="font-size: 50px;">회원정보</h3>
		<table border="1" style="margin-top: 50px; font-size: 25px; text-align: center; background-color: white;">
            <tr>
                <th>ID</th><th>Password</th><th>Name</th>
                <th>Gender</th><th>Age</th><th>Email</th><th colspan=2>Action</th>
            </tr>
            
            <%
				if (list.size() > 0) {
					for (int i=0; i<list.size(); i++) {  // 한 행식 출력
						User user = list.get(i);
					%>
					<tr>
						<td><%=user.getId() %></td>
						<td><%=user.getPasswd() %></td>
						<td><%=user.getName() %></td>
						<td><%=user.getGender() %></td>
						<td><%=user.getAge() %></td>
						<td><%=user.getEmail() %></td>
						<td><a href="UserController?action=edit&userId=<%=user.getId() %>">Update</a></td>
                    <td><a href="UserController?action=delete&userId=<%=user.getId()%>">Delete</a></td>
					</tr>
					<%
					}
				} else { 
					%>
					<tr>
						<td colspan="7">NO USER</td>
					</tr>
					<%	
				}
				%>
        </table>
            
        <p><a style="color:black;" href="addUser.jsp">Add User</a></p>
	</div>
</body>
</html>