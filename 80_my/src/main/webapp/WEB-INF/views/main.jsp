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
		background-color: white;
		overflow: hidden;
		margin: 25px;
		font-size: 90%;
		font-weight: bold;
		border-radius: 10px;
	}
	article .product img{
		width: 200px;
		height: 200px;
	}
	article .product .prd_label{
		padding: 5px;
	}
	article .product .prd_price{
		color: hotpink;
		padding: 5px;
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
<h2>베스트 상품</h2>
<hr>
	<c:forEach items="${list }" var="i">
		<div class="product" onclick="location.href='onelist.do?idx=${i.idx}'">
			<div><img src="resources/images/${i.p_image_1st }"></div>
			<div class="prd_label">${i.p_content }</div>
			<br>
			<div class="prd_price"><f:formatNumber value="${i.p_price }" pattern="#,###"/>원</div>
			<input type="hidden" name="idx" value="${i.idx }">
		</div>
	</c:forEach>
</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>
