<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	session.invalidate();
%>

	<script>
		alert('Log out');
		location.href = 'index.jsp';
	</script>

