<%@page import="com.dao.UserDao" %>
<%@page import="com.db.DbUtil" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="loginCheck.jspf" %>

<jsp:useBean id="userBean" class="com.bean.User"/>
<jsp:setProperty property="*" name="userBean" />

<%
	UserDao userDao = new UserDao();
	int check = userDao.deleteUser(userBean);

	if (check == 1) {
		session.invalidate();
		%>
		<script>
			alert('탈퇴 되었습니다.');
			location.href = 'index.jsp';
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