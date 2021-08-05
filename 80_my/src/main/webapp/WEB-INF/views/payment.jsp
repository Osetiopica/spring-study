<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
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
	function buy_go(f) {
		alert("결제가 완료 되었습니다.");
		f.submit();
	}
</script>
</head>
<body>
<div class="wrap">
	<%@include file="top.jsp" %>
	<%@include file="nav.jsp" %>

<article>
<div><a href="index.jsp">HOME</a> > 
<a>주문</a> > 
<a>결제</a>
</div>
<br>
<h2>결제하기</h2>
<div class="payment_detail">
	<form action="paymentOk.do" method="post">
	<div class="payment_detail_left">
		<div class="payment_product_info">
		<h3>주문 상품 정보</h3>
		<div class="product_img"><img src="resources/images/${vo.p_image_1st }"></div>
			<table class="product_detail_tb">
				<thead>
					<tr><td colspan="2">${vo.p_content }</td></tr>
				</thead>
				<tbody>
					<tr><td>판매가</td><td><f:formatNumber value="${vo.p_price }" pattern="#,###"/>원</td></tr>
					<tr><td>배송비</td><td>20,000원</td></tr>
					<tr><td>모델명</td><td>${vo.p_name }</td></tr>
					<tr><td>버전</td><td>${svo.s_ver }</td></tr>
					<tr><td>용량</td><td>${svo.s_size }</td></tr>
					<tr><td>색상</td><td>${svo.s_color }</td></tr>
				</tbody>
			</table>
			<input type="hidden" name="s_ver" value="${svo.s_ver }">
			<input type="hidden" name="s_size" value="${svo.s_size }">
			<input type="hidden" name="s_color" value="${svo.s_color }">
		</div>
		<br>
		<div class="delivery_info">
			<h3>배송 정보</h3>
			<p>${mvo.name }</p>
			<p>${mvo.phone }</p>
			<p>${mvo.addr_1st } ${mvo.addr_2nd } ${mvo.addr_3rd } </p>
			<p>배송 메모 <select name="s_memo" style="padding:3px;">
						<option value="집 앞에 두고 가주세요.">집 앞에 두고 가주세요.</option>
						</select></p>
		</div>
	</div>
	
	<div class="payment_detail_right">
		<div class="payment_price_final">
			<table class="payment_price_final_tb">
				<tbody>
					<tr><td>판매가</td><td class="float_right"><f:formatNumber value="${vo.p_price }" pattern="#,###"/>원</td></tr>
					<tr><td>할인</td><td class="float_right">0원</td></tr>
					<tr><td>배송비</td><td class="float_right">20,000원</td></tr>
					<tr><td colspan="2"><hr></td></tr>
					<tr><td style="padding-right:10px;">총 결제 금액 </td>
						<td class="float_right" style="color:hotpink; font-weight: bold;">
							<f:formatNumber value="${vo.p_price+20000 }" pattern="#,###"/>원
							<input type="hidden" name="s_price" value="${vo.p_price+20000 }">
							<input type="hidden" name="p_idx" value="${vo.idx }">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<br>
		<div class="payment_select">
			<table class="payment_select_tb">
				<tbody>
					<tr><td><input type="radio" name="s_pay" value="카드" required checked>신용카드</td>
					<td><input type="radio" name="s_pay" value="계좌" required>가상계좌</td></tr>
					<tr><td><input type="radio" name="s_pay" value="무통장" required>무통장 입금</td>
					<td><input type="radio" name="s_pay" value="포인트" required>포인트 결제</td></tr>
				</tbody>
			</table>
		</div>
		<div class="pay_btn">
			<input type="submit" class="pay_go_btn" value="결제하기">
		</div>
	</div>
	</form>
</div>

</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>