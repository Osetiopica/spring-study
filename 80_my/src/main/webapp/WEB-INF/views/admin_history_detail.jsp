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
	article .product{
		float: left;
		width: 200px;
		height: 400px;
		background-color: #eef;
		overflow: hidden;
		margin: 25px;
		font-size: 90%;
		font-weight: bold;
	}
	article .payment_detail .product_img img{
		width: 100px;
		height: 100px;
		float: left;
		margin: 15px 50px 0 0;
	}
	article .product .prd_label{
		padding: 5px;
	}
	article .product .prd_price{
		color: hotpink;
		padding: 5px;
	}
	.product_detail_tb thead{
		font-weight: bold;
		font-size: 120%;
	}
	.product_detail_tb td{
		padding: 5px 0;
	}
	.product_detail_tb select{
		padding: 5px;
		width: 250px;
	}
	.payment_product_info{
		background-color: white;
		padding: 20px;
	}
	.payment_detail{
		width: 1000px;
	}
	.payment_detail_left{
		width: 600px;
		float: left;
	}
	.payment_detail_right{
		width: 350px;
		float: right;
	}
	.payment_price_final, .payment_select{
		background-color: white;
		width: 350px;
		padding: 20px;
	}
	.payment_price_final_tb, .payment_select_tb{
		margin: 0px auto;
	}
	.save_btn .save_go_btn{
		background-color: hotpink;
		height: 40px;
		width: 350px;
	}
	.save_btn .sale_cancel_btn{
		background-color: white;
		height: 40px;
		width: 350px;
	}
	.delivery_info{
		padding: 20px;
		background-color: white;
		width: 600px;
	}
	.payment_select_tb td{
		padding: 10px;
	}
	.float_right{
		float: right;
	}
	.process_select{
		background-color: white;
		width: 350px;
		padding: 20px;
		text-align: center;
	}
	.process_select select{
		padding: 5px;
	}
</style>
<script type="text/javascript">
	function admin_go() {
		if(document.getElementsByClassName("admin_link")[0].value=="admin_customer"){
			location.href="admin_customer_list.jsp";
		}else if(document.getElementsByClassName("admin_link")[0].value=="admin_product"){
			location.href="admin_product_list.jsp";
		}else if(document.getElementsByClassName("admin_link")[0].value=="admin_history"){
			location.href="admin_history_list.jsp";
		}else if(document.getElementsByClassName("admin_link")[0].value=="admin_other"){
			location.href="admin_other.jsp";
		}
	}
	function save_go() {
		alert("변경 사항이 저장되었습니다.");
		location.href="admin_history_list.jsp";
	}
	function sale_cancel() {
		var a = confirm("해당 판매를 취소하시겠습니까?");
		if(a){
			location.href="admin_history_list.jsp";
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
		<option value="admin_product">상품 관리</option>
		<option value="admin_history" selected>판매 내역</option>
		<option value="admin_other">기타</option>
	</select>
	</div>
<br>
<h2>판매상품 정보</h2>
<div class="payment_detail">
	<div class="payment_detail_left">
		<div class="payment_product_info">
		<h3>선택 상품 옵션</h3>
		<div class="product_img"><img src="resources/images/30010778_detail_032.jpg"></div>
			<table class="product_detail_tb">
				<thead>
					<tr><td colspan="2">아수스 로그폰5 Asus Rog Phone5 5G 8GB/16GB +128GB/256GB ZS673KS 듀얼심</td></tr>
				</thead>
				<tbody>
					<tr><td>판매가</td><td>729,000원</td></tr>
					<tr><td>배송비</td><td>20,000원</td></tr>
					<tr><td>모델명</td><td>Rog Phone 5</td></tr>
					<tr><td>버전</td><td>글로벌 버전</td></tr>
					<tr><td>용량</td><td>256GB+12GB</td></tr>
					<tr><td>색상</td><td>블랙</td></tr>
				</tbody>
			</table>
		</div>
		<br>
		<div class="delivery_info">
			<h3>구매자 배송 정보</h3>
			<p>홍길동</p>
			<p>01012345678</p>
			<p>서울특별시 마포구 홍대입구로22길 123-12 (서초동)</p>
			<p>(03212)</p>
			<p>배송 메모 : 집 앞에 두고 가주세요.</p>
		</div>
	</div>
	
	<div class="payment_detail_right">
		<div class="payment_price_final">
			<table class="payment_price_final_tb">
				<tbody>
					<tr><td>판매가</td><td class="float_right">729,000원</td></tr>
					<tr><td>할인</td><td class="float_right">-10,000원</td></tr>
					<tr><td>배송비</td><td class="float_right">20,000원</td></tr>
					<tr><td colspan="2"><hr></td></tr>
					<tr><td>총 결제 금액</td><td class="float_right" style="color:hotpink; font-weight: bold;">739,000원</td></tr>
				</tbody>
			</table>
		</div>
		<br>
		<div class="payment_select">
			<table class="payment_select_tb">
				<tbody>
					<tr><td>결제 수단 : 신용카드</td></tr>
				</tbody>
			</table>
		</div>
		<br>
		<div class="process_select"> 진행상황 : 
			<select onchange="" class="admin_link">
				<option value="">구매 신청</option>
				<option value="">배송 중</option>
				<option value="">배송 완료</option>
				<option value="">구매 확정</option>
			</select>
		</div>
		<br>
		<div class="save_btn">
			<input type="button" class="save_go_btn" value="저장" onclick="save_go()">
			<br><br>
			<input type="button" class="sale_cancel_btn" value="판매 취소" onclick="sale_cancel()">
		</div>
	</div>
	
</div>

</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>