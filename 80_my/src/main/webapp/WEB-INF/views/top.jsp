<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>월드폰</title>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
<style type="text/css">
	body{
		background-color: #eee;
	}
	a{
		text-decoration: none;
		color: black;
	}
	.log {
		float: right;
		margin-right: 30px;
		font-weight: bold;
	}
	.search_all {
		float: right;
		width: 150px;
		padding: 5px;
		margin-right: 5px;
	}
	.search_all_btn {
		float: right;
		padding: 4px;
		background-color: white;
	}
	.site_title{
		margin-top:20px;
	}
</style>
<script type="text/javascript">
	function logout() {
		var a = confirm('로그아웃 하시겠습니까?');
		if(a){
			location.href="logout.do";
		}
	}
</script>
</head>
<body>
<header>
<div style="width:1000px; display: inline-block;">
	<c:choose>
		<c:when test="${empty login }">
			<div class="log">
				<a href="login.do">로그인</a>
			</div>
		</c:when>
		<c:otherwise>
			<div class="log">
				<font>${name } 님</font>&nbsp;|&nbsp;
				<a href="javascript:logout()">로그아웃</a>&nbsp;|&nbsp;<a href="mypage.do">마이페이지</a>
			</div>
		</c:otherwise>
	</c:choose>
	<br>
	<div>
		<a href="main.do" target="_top">
			<img class="site_title" src="resources/images/top_logo_tp.png">
		</a>
	</div>
	<input type="button" class="search_all_btn" value="검색">
	<input type="search" class="search_all">
</div>
</header>
</body>
</html>
