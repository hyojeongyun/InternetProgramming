<%@ page import="com.dao.UserDao" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.db.DbUtil" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="userBean" class="com.bean.User" />
<jsp:setProperty property="*" name="userBean" />

<%
	UserDao userDao = new UserDao();
	int check = userDao.userCheck(userBean);
	
	if(check==1){
		session.setAttribute("id", userBean.getId());
		response.sendRedirect("home.jsp");
	}else if(check==0){
		%>
		<script>
		alert('Wrong Password');
		history.back();
		</script>
		<% 
	}else { 
	%>
	<script>
		alert('Wrong ID');
		history.back();
		</script>
	<% 
		}
	%>

	