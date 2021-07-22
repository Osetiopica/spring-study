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
	article{
		width: 1000px;
		text-align: left;
		margin: 10px 0;
	}
	article .brand_list{
		width: 1000px;
		border: 1px solid black;
	}
	article .brand{
		width: 195px;
		padding: 10px;
		display: inline-block;
  		text-decoration: none;
	}
	article .product_sort a{
		margin: 0 15px;
		padding: 5px 10px;
	}
	article .product{
		float: left;
		width: 200px;
		height: 400px;
		background-color: #fff;
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
<div><a href="index.jsp">HOME</a> > 
<select><option>해외 스마트폰</option><option>해외 태블릿</option></select> >
<select><option>삼성 갤럭시 S시리즈</option><option>삼성 갤럭시 A시리즈</option><option>애플</option></select>
</div>
<br>
<h2>해외 스마트폰</h2>
<div class="brand_list">
<a class="brand" href="#">삼성 갤럭시 S시리즈</a>
<a class="brand" href="#">삼성 갤럭시 A시리즈</a>
<a class="brand" href="#">애플</a>
<a class="brand" href="#">샤오미</a>
<a class="brand" href="#">샤오미</a>
<a class="brand" href="#">샤오미</a>
<a class="brand" href="#">샤오미</a>
<a class="brand" href="#">샤오미</a>
<a class="brand" href="#">샤오미</a>
<a class="brand" href="#">샤오미</a>
<a class="brand" href="#">샤오미</a>
<a class="brand" href="#">샤오미</a>
</div>
<br>
<br>
<div class="product_sort">
상품 136개
<hr>
<a>판매인기순</a><a>최신순</a><a>낮은가격순</a><a>높은가격순</a>
<hr>
</div>

	<c:forEach begin="0" end="6" step="1">
		<div class="product" onclick="product_detail()">
			<div><img src="resources/images/pic_trulli.jpg"></div>
			<div class="prd_label">아수스 로그폰5 Asus Rog Phone5 5G 8GB/16GB +128GB/256GB ZS673KS 듀얼심</div>
			<br>
			<div class="prd_price">729,000원</div>
		</div>
	</c:forEach>

</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>
