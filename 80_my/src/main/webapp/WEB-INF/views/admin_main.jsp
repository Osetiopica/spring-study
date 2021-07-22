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
	a{
		text-decoration: none;
		color: black;
	}
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
	.admin{
		width: 1000px;
	}
	.admin_left{
		width: 600px;
		float: left;
		background-color: white;
		padding: 20px 100px;
		border-radius: 10px;
	}
	.admin_right{
		width: 350px;
		float: right;
	}
	.admin_btn .admin_go_btn{
		background-color: hotpink;
		height: 40px;
		width: 350px;
		margin-bottom: 10px;
		font-size: 110%;
		font-weight: bold;
	}
	.admin_tb td{
		padding: 10px;
	}
	
</style>
<script type="text/javascript">
	function admin_customer() {
		location.href="admin_customer_list.jsp";
	}
	function admin_product() {
		location.href="admin_product_list.jsp";
	}
	function admin_history() {
		location.href="admin_history_list.jsp";
	}
	function admin_other() {
		location.href="admin_other.jsp";
	}
</script>
</head>
<body>
<div class="wrap">
	<%@include file="top.jsp" %>
	<%@include file="nav.jsp" %>

<article>
<div><a href="index.jsp">HOME</a> > 
<a>관리자</a>
</div>
<br>
<h2>관리자</h2>
<div class="admin">

	<div class="admin_left">
		<h3>사이트 정보</h3>
			<table class="admin_tb">
				<tbody>
					<tr><td>사이트 생성일</td><td>2022-02-02 02:22:22</td></tr>
					<tr><td>총 회원 수</td><td>101</td></tr>
				</tbody>
			</table>
	</div>
	
	<div class="admin_right">
		<div class="admin_btn">
			<input type="button" class="admin_go_btn" value="회원 관리" onclick="admin_customer()">
			<input type="button" class="admin_go_btn" value="상품 관리" onclick="admin_product()">
			<input type="button" class="admin_go_btn" value="판매 내역" onclick="admin_history()">
			<input type="button" class="admin_go_btn" value="기타" onclick="admin_other()">
		</div>
	</div>
	
</div>

</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>