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
	.notice_border table{
		width: 1000px;
		border-top: 2px solid lightgray;
		text-align: center;
	}
	.notice_border table td{
		border-bottom: 1px solid lightgray;
		padding: 10px;
	}
</style>
<script type="text/javascript">
	function service_go() {
		if(document.getElementsByClassName("service_link")[0].value=="notice"){
			location.href="service_notice.jsp";
		}else if(document.getElementsByClassName("service_link")[0].value=="faq"){
			location.href="service_faq.jsp";
		}else if(document.getElementsByClassName("service_link")[0].value=="question"){
			location.href="service_question.jsp";
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
고객센터 > 
<select onchange="service_go()" class="service_link">
	<option value="notice" selected>공지사항</option>
	<option value="faq">자주 묻는 질문</option>
	<option value="question">1:1 문의</option>
</select>
</div>
<br>
<h2>공지사항</h2>
<div class="notice_border">

		<table>
			<c:forEach begin="0" end="4" step="1">
			<tr>
				<td>공지사항입니다.</td>
				<td width="15%">운영자</td>
				<td width="20%">2022-02-02 22:22:22</td>
			</tr>
			</c:forEach>
		</table>
	
</div>

</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>
