<%@page import="com.dao.UserDao" %>
<%@page import="com.db.DbUtil" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="loginCheck.jspf" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="userBean" class="com.bean.User"/>
<jsp:setProperty property="*" name="userBean" />

<%
	UserDao userDao = new UserDao();
	int check = userDao.updateUser(userBean);
	if (check == 1) {
		%>
		<script>
			alert('수정 성공');
			location.href = 'home.jsp';
		</script>
		<%
	} else {
		%>
		<script>
			alert('Wrong Password');
			history.back();
		</script>
		<%
	}
%>