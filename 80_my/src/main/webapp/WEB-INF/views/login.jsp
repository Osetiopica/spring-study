<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="resources/images/icon.png">
<title>월드폰</title>
<meta charset="UTF-8">
<style type="text/css">
	article a{
		text-decoration: none;
		color: black;
	}
	article a:hover{
		background-color: #ddd;
	}
	.wrap {
		margin: 0px auto;
		width: 1000px;
		text-align: center;
		position: relative;
	}
	.clear{
		content: "";
  		clear: both;
  		display: table;
	}
	article{
		width: 1000px;
		text-align: left;
		margin: 10px 0;
	}
	article .login_title{
		margin-left: 200px;
	}
	article .login_border{
		width: 600px;
		height: 400px;
		margin: 0px auto;
	}
	article .login_inside{
		width: 350px;
		height: 150px;
		margin: 130px auto;
	}
	article .login_input{
		padding: 10px;
		margin: 5px;
		float: left;	
	}
	article .login_btn{
		width: 100px;
		height: 90px;
		background-color: hotpink;
		font-weight: bold;
		font-size: 130%;
		margin-top: 5px;
	}
	article .login_inside a{
		padding: 3px;
		margin: 15px 5px;
	}
</style>
<script type="text/javascript">
	function admin() {
		location.href="admin_main.jsp";
	}
</script>
</head>
<body>
<div class="wrap">
	<%@include file="top.jsp" %>
	<%@include file="nav.jsp" %>

<article>
<div><a>HOME</a> > 로그인</div>
<br>
<h2 class="login_title">로그인</h2>
	<div class="login_border">
		<div class="login_inside">
			<input type="text" class="login_input" name="id" placeholder="아이디" required="required">
			<input type="password" class="login_input" name="pw" placeholder="비밀번호" required="required"> 
			<input type="button" class="login_btn" value="로그인" onclick="admin()">
			<p class="clear">
			<a href="join_terms.jsp">회원가입</a><a href="#">아이디 찾기</a><a href="#">비밀번호 찾기</a>
		</div>

	</div>
</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>
