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
	article .product_detail .product_img img{
		width: 400px;
		height: 400px;
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
		padding: 10px 0;
	}
	.product_detail_tb select{
		padding: 5px;
		width: 250px;
	}
	.buy_btn{
		width:1000px;
		text-align: right;
	}
	.buy_btn .cart_add_btn{
		background-color: white;
		height: 40px;
		width: 100px;
	}
	.buy_btn .buy_go_btn{
		background-color: hotpink;
		height: 40px;
		width: 200px;
		margin: 0 30px;
		font-weight: bold;
	}
	.product_bottom{
		text-align: center;
	}
	.product_nav{
		text-align: center;
		margin: 0px auto;
		width: 700px;
	}
	.product_nav_btn{
		float: left;
		background-color: white;
		height: 40px;
		width: 120px;
		margin: 0 10px;
		margin-top: 100px;
		margin-bottom: 30px;
	}
	.product_nav_btn_focus{
		float: left;
		background-color: hotpink;
		height: 40px;
		width: 120px;
		margin: 0 10px;
		margin-top: 100px;
		margin-bottom: 30px;
	}
	.product_after_buy table{
		width: 1000px;
		border-top: 2px solid lightgray;
	}
	.product_after_buy table td{
		border-bottom: 1px solid lightgray;
	}
	.product_question table{
		width: 1000px;
		border-top: 2px solid lightgray;
	}
	.product_question table td{
		border-bottom: 1px solid lightgray;
	}
</style>
<script type="text/javascript">
	function product_detail() {
		location.href="product_detail.jsp";
	}
</script>
</head>
<body>
<div class="wrap">
	<%@include file="top.jsp" %>
	<%@include file="nav.jsp" %>

<article>
<div><a href="index.jsp">HOME</a> > 
<select><option>해외 스마트폰</option><option>해외 태블릿</option></select> >
<select><option>삼성 갤럭시 S시리즈</option><option>삼성 갤럭시 A시리즈</option><option>애플</option></select>
</div>
<br>
<div class="product_detail">
	<div class="product_img"><img src="resources/images/${vo.p_image_1st }"></div>
	<table class="product_detail_tb">
		<thead>
			<tr><td colspan="2">아수스 로그폰5 Asus Rog Phone5 5G 8GB/16GB +128GB/256GB ZS673KS 듀얼심</td></tr>
		</thead>
		<tbody>
			<tr><td>판매가</td><td><f:formatNumber value="${vo.p_price }" pattern="#,###"/>원</td></tr>
			<tr><td>배송비</td><td>20,000원</td></tr>
			<tr><td>상품코드</td><td>${vo.p_num }</td></tr>
			<tr><td>모델명</td><td>${vo.p_name }</td></tr>
			<tr><td>제조사</td><td>${vo.p_company }</td></tr>
			<tr><td>출시일</td><td>${vo.p_date.substring(0, 10) }</td></tr>
			<tr><td colspan="2"><hr></td></tr>
			<tr><td>버전</td><td><select><option>글로벌 버전</option></select></td></tr>
			<tr><td>용량</td><td><select><option>256GB+12GB</option></select></td></tr>
			<tr><td>색상</td><td><select><option>블랙</option></select></td></tr>
			<tr><td colspan="2"><hr></td></tr>
		</tbody>
	</table>
	<div class="buy_btn">
		<input type="button" class="cart_add_btn" value="장바구니" onclick="cart_add()">
		<input type="button" class="buy_go_btn" value="구매하기" onclick="location.href='payment.jsp'">
	</div>
	<div class="product_bottom">
	<div class="product_nav" id="product_detail_info">
		<input type="button" class="product_nav_btn_focus" value="상품 상세 정보" onclick="location.href='#product_detail_info'">
		<input type="button" class="product_nav_btn" value="배송 안내"  onclick="location.href='#product_delivery_info'">
		<input type="button" class="product_nav_btn" value="교환 및 반품 안내" onclick="location.href='#product_exchange_info'">
		<input type="button" class="product_nav_btn" value="구매 후기" onclick="location.href='#product_after_buy'">
		<input type="button" class="product_nav_btn" value="상품 문의" onclick="location.href='#product_question'">
	</div>
	<p class="clear">
	<div class="product_detail_info">
		<img src="resources/images/${vo.p_image_2nd }" onerror="this.style.display='none'">
		<img src="resources/images/${vo.p_image_3rd }" onerror="this.style.display='none'">
		<img src="resources/images/${vo.p_image_4th }" onerror="this.style.display='none'">
	</div>
	<div class="product_nav" id="product_delivery_info">
		<input type="button" class="product_nav_btn" value="상품 상세 정보" onclick="location.href='#product_detail_info'">
		<input type="button" class="product_nav_btn_focus" value="배송 안내"  onclick="location.href='#product_delivery_info'">
		<input type="button" class="product_nav_btn" value="교환 및 반품 안내" onclick="location.href='#product_exchange_info'">
		<input type="button" class="product_nav_btn" value="구매 후기" onclick="location.href='#product_after_buy'">
		<input type="button" class="product_nav_btn" value="상품 문의" onclick="location.href='#product_question'">
	</div>
	<p class="clear">
	<div class="product_delivery_info">
		<%@include file="delivery.jsp" %>
	</div>
	<div class="product_nav" id="product_exchange_info">
		<input type="button" class="product_nav_btn" value="상품 상세 정보" onclick="location.href='#product_detail_info'">
		<input type="button" class="product_nav_btn" value="배송 안내"  onclick="location.href='#product_delivery_info'">
		<input type="button" class="product_nav_btn_focus" value="교환 및 반품 안내" onclick="location.href='#product_exchange_info'">
		<input type="button" class="product_nav_btn" value="구매 후기" onclick="location.href='#product_after_buy'">
		<input type="button" class="product_nav_btn" value="상품 문의" onclick="location.href='#product_question'">
	</div>
	<p class="clear">
	<div class="product_exchange_info">
		<%@include file="exchange.jsp" %>
	</div>
	<div class="product_nav" id="product_after_buy">
		<input type="button" class="product_nav_btn" value="상품 상세 정보" onclick="location.href='#product_detail_info'">
		<input type="button" class="product_nav_btn" value="배송 안내"  onclick="location.href='#product_delivery_info'">
		<input type="button" class="product_nav_btn" value="교환 및 반품 안내" onclick="location.href='#product_exchange_info'">
		<input type="button" class="product_nav_btn_focus" value="구매 후기" onclick="location.href='#product_after_buy'">
		<input type="button" class="product_nav_btn" value="상품 문의" onclick="location.href='#product_question'">
	</div>
	<p class="clear">
	<div class="product_after_buy">
		<table>
			<c:forEach begin="0" end="4" step="1">
			<tr>
				<td>★★★★☆</td>
				<td>매우 마음에 들었어요!</td>
				<td>익명1</td>
				<td>2022-02-02</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	<div class="product_nav" id="product_question">
		<input type="button" class="product_nav_btn" value="상품 상세 정보" onclick="location.href='#product_detail_info'">
		<input type="button" class="product_nav_btn" value="배송 안내"  onclick="location.href='#product_delivery_info'">
		<input type="button" class="product_nav_btn" value="교환 및 반품 안내" onclick="location.href='#product_exchange_info'">
		<input type="button" class="product_nav_btn" value="구매 후기" onclick="location.href='#product_after_buy'">
		<input type="button" class="product_nav_btn_focus" value="상품 문의" onclick="location.href='#product_question'">
	</div>
	<p class="clear">
	<div class="product_question">
		<table>
			<c:forEach begin="0" end="4" step="1">
			<tr>
				<td>지금 사면 언제 쯤 도착 하나요?</td>
				<td>익명1</td>
				<td>2022-02-02</td>
			</tr>
			<tr>
				<td>└ 2주 안에 도착 할 것으로 예상 됩니다.</td>
				<td>판매자</td>
				<td>2022-02-02</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	</div>
</div>

</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>
