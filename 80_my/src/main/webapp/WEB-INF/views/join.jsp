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
	article table td{
		padding: 8px 5px;
	}
	select, input{
		padding: 10px;
	}
	.join_border{
		width: 600px;
		margin-left: 260px;
	}
	.join_move_btn{
		text-align: center;
	}
	.join_move_btn .prev{
		background-color: white;
		height: 40px;
		width: 100px;
	}
	.join_move_btn .next{
		background-color: hotpink;
		height: 40px;
		width: 100px;
	}
</style>
<script type="text/javascript">
function mail() {
	var tmp = document.getElementById("mail_select").value;
	if(tmp == "직접 입력 하기"){
		tmp = "";
		document.getElementById("mail_host").focus();
	}
	document.getElementById("mail_host").value = tmp;
}
function join_go() {
	alert("회원가입 완료");
	location.href="index.jsp";
}
</script>
</head>
<body>
<div class="wrap">
	<%@include file="top.jsp" %>
	<%@include file="nav.jsp" %>

<article>
<div><a>HOME</a> > 회원가입</div>
<br>
<h2 class="join_title">회원정보 입력</h2>
	<div class="join_border">
			<table class="tb">
				<tr><td>아이디</td><td><input type="text" style="width:370px;" required></td></tr>
				<tr><td>비밀번호</td><td><input type="text" style="width:370px;" required></td></tr>
				<tr><td>비밀번호 확인</td><td><input type="text" style="width:370px;" required></td></tr>
				<tr><td>이름</td><td><input type="text" style="width:370px;" required></td></tr>
				<tr><td>이메일</td><td>
					<input type="text" style="width:115px;" required>@<input type="text" id="mail_host" style="width:105px;" required>
					<select id="mail_select" style="width:130px;" onchange="mail()">
						<option>직접 입력 하기</option>
						<option>naver.com</option>
						<option>google.com</option>
					</select>
				</td></tr>
				<tr><td>연락처</td><td><input type="text" style="width:370px;"></td></tr>
				<tr><td>주소</td><td>
					<input type="text" style="width:100px;" required>
					<input type="button" value="주소 검색" style="background-color: white;">
				</td></tr>
				<tr><td></td><td><input type="text" style="width:370px;" required></td></tr>
				<tr><td>상세주소</td><td><input type="text" style="width:370px;" required></td></tr>
			</table>
			<br><br>

	</div>
			<div class="join_move_btn">
				<input type="button" class="prev" value="이전 단계" onclick="javascript:history.back()">
				<input type="button" class="next" value="회원가입" onclick="join_go()">
			</div>
</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>
