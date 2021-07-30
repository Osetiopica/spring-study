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
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('addr_1st').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("addr_2nd").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("addr_2nd").value = jibunAddr;
            }
        }
    }).open();
}
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
<div class="wrap">
	<%@include file="top.jsp" %>
	<%@include file="nav.jsp" %>

<article>
<div><a>HOME</a> > 회원가입</div>
<br>
<h2 class="join_title">회원정보 입력</h2>
<form action="join_ok.do" method="post">
	<div class="join_border">
			<table class="tb">
				<tr><td>아이디</td><td><input type="text" name="id" style="width:370px;" required></td></tr>
				<tr><td>비밀번호</td><td><input type="text" name="pw" style="width:370px;" required></td></tr>
				<tr><td>비밀번호 확인</td><td><input type="text" style="width:370px;" required></td></tr>
				<tr><td>이름</td><td><input type="text" name="name" style="width:370px;" required></td></tr>
				<tr><td>연락처</td><td><input type="text" name="phone" style="width:370px;"></td></tr>
				<tr><td>이메일</td><td><input type="text" name="email" style="width:370px;"></td></tr>
				<tr><td>주소</td><td>
					<input type="text" id="addr_1st" name="addr_1st" style="width:100px;" required readonly>
					<input type="button" value="주소 검색" style="background-color: white;" onclick="findAddr()">
				</td></tr>
				<tr><td></td><td><input type="text" id="addr_2nd" name="addr_2nd" style="width:370px;" required readonly></td></tr>
				<tr><td>상세주소</td><td><input type="text" name="addr_3rd" style="width:370px;" required></td></tr>
			</table>
			<br><br>
	</div>
			<div class="join_move_btn">
				<input type="button" class="prev" value="이전 단계" onclick="javascript:history.back()">
				<input type="submit" class="next" value="회원가입">
			</div>
</form>
</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>
