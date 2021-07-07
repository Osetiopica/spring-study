<%@page import="com.ict.db.VO"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.db.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	a{
		text-decoration: none;
		color: black;
	}
	div{
		text-align: center;
		margin: auto;
		width: 500px;
		min-height: 300px;
	}
	table, th, td{
		width: 500px;
		border: 1px solid black;
		border-collapse: collapse;
		padding: 5px 10px;
	}
	td, input{
		padding: 10px;
	}
</style>
</head>
<body>
	<div>
		<h1>회원 정보 입력</h1>
		<p><a href="index.jsp">[메뉴보기]</a></p>
		<form action="join_ok.jsp" method="post">
			<table>
				<tr><th>id</th><td><input type="text" name="id" required></td><tr>
				<tr><th>pw</th><td><input type="password" name="pw" required></td><tr>
				<tr><th>name</th><td><input type="text" name="name" required></td><tr>
				<tr><th>age</th><td><input type="number" name="age" required></td><tr>
				<tr><th>addr</th><td><input type="text" name="addr" required></td><tr>
				<tr><td colspan="5"><input type="submit"></td></tr>
			</table>
		</form>
	</div>
</body>
</html>