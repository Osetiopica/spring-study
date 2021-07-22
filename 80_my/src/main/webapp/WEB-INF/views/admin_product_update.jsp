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
	.join_border select, input{
		padding: 10px;
	}
	.join_border{
		width: 600px;
		margin-left: 260px;
	}
	.join_move_btn{
		text-align: center;
	}
	.join_move_btn .delete{
		background-color: white;
		height: 40px;
		width: 100px;
	}
	.join_move_btn .next{
		background-color: hotpink;
		height: 40px;
		width: 100px;
	}
	.alter_title{
		margin-left: 200px;
	}
</style>
<script type="text/javascript">
function product_add_go() {
	alert("상품정보 수정 완료");
	location.href="admin_product_list.jsp";
}
function product_delete_go() {
	var a = confirm("해당 상품을 삭제하겠습니까?");
	if(a){
		location.href="admin_product_list.jsp";
	}
}
</script>
</head>
<body>
<div class="wrap">
	<%@include file="top.jsp" %>
	<%@include file="nav.jsp" %>

<article>
<div><a href="index.jsp">HOME</a> > 
	<a href="admin_main.jsp">관리자</a> > 
	<select onchange="admin_go()" class="admin_link">
		<option value="admin_customer">회원 관리</option>
		<option value="admin_product" selected>상품 관리</option>
		<option value="admin_history">판매 내역</option>
		<option value="admin_other">기타</option>
	</select>
	</div>
<br>
<h2 class="alter_title">상품정보 수정</h2>
	<div class="join_border">
			<table class="tb">
				<tr><td>상품명</td><td><input type="text" style="width:370px;" value="아수스 로그폰5 Asus Rog Phone5 5G 8GB/16GB +128GB/256GB ZS673KS 듀얼심" required></td></tr>
				<tr><td>판매가</td><td><input type="number" style="width:370px;" value="729000" required></td></tr>
				<tr><td>배송비</td><td><input type="number" style="width:370px;" value="20000" required></td></tr>
				<tr><td>모델명</td><td><input type="text" style="width:370px;" value="Rog Phone 5" required></td></tr>
				<tr><td>제조사</td><td><input type="text" style="width:370px;" value="Asus" required></td></tr>
				<tr><td>출시일</td><td><input type="date" style="width:370px;" value="2021-03-19" required></td></tr>
				<tr><td>버전1</td><td><input type="text" style="width:370px;" value="글로벌 버전" required></td></tr>
				<tr><td>버전2</td><td><input type="text" style="width:370px;" value=""></td></tr>
				<tr><td>용량1</td><td><input type="text" style="width:370px;" value="256GB+12GB" required></td></tr>
				<tr><td>용량2</td><td><input type="text" style="width:370px;" value=""></td></tr>
				<tr><td>용량3</td><td><input type="text" style="width:370px;" value=""></td></tr>
				<tr><td>색상1</td><td><input type="text" style="width:370px;" value="블랙" required></td></tr>
				<tr><td>색상2</td><td><input type="text" style="width:370px;"></td></tr>
				<tr><td>상품 이미지</td><td><input type="file" style="width:200px;"> "rogphone.jpg"</td></tr>
				<tr><td>상세설명 이미지</td><td><input type="file" style="width:200px;"> "rogphone_info.jpg"</td></tr>
			</table>
			<br><br>

	</div>
			<div class="join_move_btn">
				<input type="button" class="delete" value="상품 삭제" onclick="product_delete_go()">
				<input type="button" class="next" value="수정 완료" onclick="product_add_go()">
			</div>
</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>
