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
	.buy_btn{
		float: right;
		margin-top: -30px;
	}
	.buy_btn .buy_go_btn{
		background-color: hotpink;
		height: 40px;
		width: 150px;
	}
	.buy_btn .cart_delete_btn{
		background-color: white;
		height: 40px;
		width: 150px;
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
장바구니
</div>
<br>
<h2>장바구니</h2>
<div class="payment_detail">
		
		<c:choose>
			<c:when test="${empty list }">
				<h1 style="text-align: center;">장바구니가 비었습니다.</h1>
			</c:when>
		</c:choose>
		<c:forEach var="i" items="${list }">
			<div class="payment_product_info">
				<div class="product_img"><img src="resources/images/${i.p_image_1st }"></div>
				<table class="product_detail_tb">
					<thead>
						<tr><td colspan="2">${i.p_content }</td></tr>
					</thead>
					<tbody>
						<tr><td>모델명</td><td>${i.p_name }</td></tr>
						<tr><td>추가한 날</td><td>${i.c_date }</td></tr>
					</tbody>
				</table>
				<div class="buy_btn">
					<input type="button" class="cart_delete_btn" value="장바구니에서 삭제" onclick="">
					<input type="button" class="buy_go_btn" value="사러 가기" onclick="">
				</div>
			</div>
			<br>
		</c:forEach>
		
</div>

</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>