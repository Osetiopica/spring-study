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
	.admin_border table{
		width: 1000px;
		border-top: 2px solid lightgray;
		text-align: center;
	}
	.admin_border table td{
		border-bottom: 1px solid lightgray;
		padding: 10px;
	}
	.admin_search_div {
		width: 300px;
		height: 30px;
		float: right;
		margin-top: 30px;
	}
	.admin_search_div .admin_search{
		width: 150px;
		padding: 5px;
	}
	.admin_search_div .admin_search_btn{
		padding: 4px;
		background-color: white;
	}
	.admin_search_div select{
		padding: 4px;
		background-color: white;
	}
	.join_move_btn{
		text-align: right;
		margin: 10px;
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
	function product_add() {
		location.href="admin_product_insert.do";
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
	<h2 style="float: left;">상품 관리</h2>
	<div class="admin_search_div">
		<select class="admin_search_select">
			<option value="admin_search_category" selected>상품명</option>
			<option value="admin_search_name">제조사</option>
		</select>
		<input type="search" class="admin_search">
		<input type="button" class="admin_search_btn" value="검색">
	</div>
	
	<div class="admin_border">
		<table>
			<thead><tr>
			<td>제조사</td><td>상품명</td><td>가격</td><td>등록일시</td>
			</tr></thead>
			<c:forEach var="i" items="${list }">
			<tr onclick="javasctipt:location.href='admin_product_update.do?idx=${i.idx}';">
				<td width="10%">${i.p_company }</td>
				<td>${i.p_content }</td>
				<td width="15%"><f:formatNumber value="${i.p_price }" pattern="#,###"/>원</td>
				<td width="20%">${i.p_date }</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	<div class="join_move_btn">
		<input type="button" class="next" value="상품 추가" onclick="product_add()">
	</div>
</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>
