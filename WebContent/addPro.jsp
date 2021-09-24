<%@page import="com.dao.UserDao" %>
<%@page import="com.db.DbUtil" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="userBean" class="com.bean.User" />
<jsp:setProperty property="*" name="userBean" />

<%
	UserDao userDao = new UserDao();
	userDao.insertUser(userBean);
%>
<script>
	alert('회원추가 되었습니다.');
	location.href = 'listUser.jsp';
</script>