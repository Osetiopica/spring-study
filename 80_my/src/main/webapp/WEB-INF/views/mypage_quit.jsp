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
	.quit_border{
		width: 600px;
		margin-left: 260px;
	}
	.quit_move_btn{
		text-align: center;
	}
	.quit_move_btn .prev{
		background-color: white;
		height: 40px;
		width: 100px;
	}
	.quit_move_btn .next{
		background-color: hotpink;
		height: 40px;
		width: 100px;
	}
	.alter_title{
		margin-left: 200px;
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
function mypage_go() {
	alert("회원 탈퇴 완료");
	location.href="index.jsp";
}
</script>
</head>
<body>
<div class="wrap">
	<%@include file="top.jsp" %>
	<%@include file="nav.jsp" %>

<article>
<div><a>HOME</a> >
<a href="mypage.jsp">마이페이지</a> >
회원 탈퇴
</div>
<br>
<h2 class="alter_title">회원 탈퇴</h2>
	<div class="quit_border">
			<table class="tb">
				<tr><td>비밀번호</td><td><input type="text" style="width:370px;" required></td></tr>
			</table>
			<br><br>

	</div>
			<div class="quit_move_btn">
				<input type="button" class="next" value="탈퇴하기" onclick="mypage_go()">
			</div>
</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>
