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
		font-size: 110%;
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
		border-radius: 10px;
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
	.pay_btn .pay_go_btn{
		background-color: hotpink;
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
</style>
<script type="text/javascript">
	function buy_go() {
		alert("결제가 완료 되었습니다.");
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
구매내역
</div>
<br>
<h2>구매내역</h2>
<div class="payment_detail">
		<c:forEach var="i" items="list">
		<div class="payment_product_info">
			<div class="product_img"><img src="resources/images/30010778_detail_032.jpg"></div>
			<table class="product_detail_tb">
				<thead>
					<tr><td colspan="2">아수스 로그폰5 Asus Rog Phone5 5G 8GB/16GB +128GB/256GB ZS673KS 듀얼심</td></tr>
				</thead>
				<tbody>
					<tr><td>결제 금액</td><td>739,000원</td></tr>
					<tr><td>모델명</td><td>${i.p_name }</td></tr>
					<tr><td>버전</td><td>글로벌 버전</td></tr>
					<tr><td>용량</td><td>256GB+12GB</td></tr>
					<tr><td>색상</td><td>블랙</td></tr>
					<tr><td>구매일시</td><td>2022-02-22 02:22:22</td></tr>
				</tbody>
			</table>
		</div>
		<br>
		</c:forEach>
</div>

</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>