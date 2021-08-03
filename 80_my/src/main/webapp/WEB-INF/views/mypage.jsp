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
	a{
		text-decoration: none;
		color: black;
	}
	.clear{
		content: "";
  		clear: both;
  		display: table;
	}
	.wrap {
		margin: 0px auto;
		width: 1000px;
		text-align: center;
		position: relative;
	}
	article{
		width: 1000px;
		text-align: left;
	}
	.mypage{
		width: 1000px;
	}
	.mypage_left{
		width: 600px;
		float: left;
		background-color: white;
		padding: 20px 100px;
		border-radius: 10px;
	}
	.mypage_right{
		width: 350px;
		float: right;
	}
	.mypage_btn .mypage_go_btn{
		background-color: hotpink;
		height: 40px;
		width: 350px;
		margin-bottom: 10px;
		font-size: 110%;
		font-weight: bold;
	}
	.mypage_quit_btn{
		width: 70px;
		height: 20px;
		margin-top: 140px;
		float: right;
	}
	.mypage_tb td{
		padding: 10px;
	}
	
</style>
<script type="text/javascript">
	function alter() {
		location.href="mypage_update.do";
	}
	function password() {
		location.href="mypage_pwd.do";
	}
	function history() {
		location.href="mypage_history.do";
	}
	function cart() {
		location.href="mypage_cart.do";
	}
	function quit() {
		location.href="mypage_quit.do";
	}
</script>
</head>
<body>
<div class="wrap">
	<%@include file="top.jsp" %>
	<%@include file="nav.jsp" %>

<article>
<div><a href="main.do">HOME</a> > 
<a>마이페이지</a>
</div>
<br>
<h2>마이페이지</h2>
<div class="mypage">

	<div class="mypage_left">
		<h3>내 정보</h3>
			<table class="mypage_tb">
				<tbody>
					<tr><td>아이디</td><td>${mvo.id }</td></tr>
					<tr><td>이름</td><td>${mvo.name }</td></tr>
					<tr><td>연락처</td><td>${mvo.phone }</td></tr>
					<tr><td>이메일</td><td>${mvo.email }</td></tr>
					<tr><td>가입일</td><td>${mvo.reg }</td></tr>
				</tbody>
			</table>
	</div>
	
	<div class="mypage_right">
		<div class="mypage_btn">
			<input type="button" class="mypage_go_btn" value="회원정보 변경" onclick="alter()">
			<input type="button" class="mypage_go_btn" value="비밀번호 변경" onclick="password()">
			<input type="button" class="mypage_go_btn" value="구매내역 보기" onclick="history()">
			<input type="button" class="mypage_go_btn" value="장바구니 보기" onclick="cart()">
			<a class="mypage_quit_btn" onclick="quit()">탈퇴하기</a>
		</div>
	</div>
	
</div>

</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>