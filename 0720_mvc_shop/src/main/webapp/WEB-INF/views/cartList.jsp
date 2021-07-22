<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 보기</title>
<style type="text/css">
table {
	margin: 10px auto;
	width: 800px;
	border-collapse: collapse;
	font-size: 90%;
	border-color: navy;
}
.tb_line table, .tb_line th, .tb_line td {
	border: 1px solid black;
}
tfoot {
	text-align: right;
	font-size: 200%;
}
tfoot tr td {
	padding: 10px;
}
</style>
<script type="text/javascript">
	function edit_cart(f) {
		f.action="editCart.do";
		f.submit();
	}
	function delete_cart(f) {
		f.action="${pageContext.request.contextPath}/MyController?cmd=deleteCart";
		f.submit();
	}
	function all_check() {
		if(document.getElementById("check_all").checked == true){
			for(var i=0; i < 1000; i++) {
				document.getElementsByName("check")[i].checked = true;
			}
		}
		if(document.getElementById("check_all").checked == false){
			for(var i=0; i < 1000; i++) {
				document.getElementsByName("check")[i].checked = false;
			}
		}
	}
	function checked_delete(){
		var f = document.forms['form_delete'];
		f.action="deleteCart.do";
		f.submit();
		
		/* var item = "";
		var index = false;
		var select_chk = document.getElementsByName("check");
		for(i=0; i < select_chk.length; i++){
		    if(select_chk[i].checked){
		   		if(index){
		   			item = item + "^";
		    	}
		   		item = item + select_chk[i].value;
		   		index = true;
			}
		}
		if(!index){
			alert("need check for delete");
			return;
		}
		document.userForm.item_delete.value = item;
		
		var agree=confirm("delete sure?");
	    if (agree){
	    	document.userForm.execute.value = "${pageContext.request.contextPath}/MyController?cmd=deleteCart";
	     	document.userForm.submit();
	    } */
	}
</script>
</head>
<body style="position:relative; width:900px; margin:auto;">
<br>
<div style="position: relative; z-index: 1;">
	<%@include file="top.jsp" %>
</div>
<br>
	<div style="width:900px; position: relative;">
	<table id="chk_tb" style="width:80px; float:left; margin-top:39px; border: 0px solid black;">
			<tr class="chk_tb1">
				<td>
				<font style="float:left;margin-left:20px;">선택</font>
				<input type="checkbox" id="check_all" onclick="all_check()">
				</td>
			</tr>
		<tbody>
			<c:choose>
				<c:when test="${!empty list }">
					<c:forEach var="i" items="${list }">
						<form method="post" name="form_delete">
							<c:forEach var="j" items="${list }">
								<c:choose>
								<c:when test="${list_leng>0 }">
									<tr><td style="height:46.7px;">
									<input type="checkbox" name="check" class="check_box" value="${j.idx}">
									</td></tr>
									<input type="hidden" value="${list_leng=list_leng-1 }">
								</c:when>
								</c:choose>
							</c:forEach>
							<input type="hidden" name="m_idx" value="${mvo.idx }">
							<input type="hidden" name="idx" value="${i.idx }">
						</form>
					</c:forEach>
				</</c:when>
			</c:choose>
		</tbody>
	</table>
				
	<table style="float:left;" class="tb_line">
		<caption><font style="font-size: 150%;">:: 장바구니 내용 ::</font></caption>
		<thead>
			<tr class="tb_line" bgcolor="#dedede">
				<th style="width:15%">제품번호</th>
				<th style="width:30%">제품명</th>
				<th style="width:20%">단가</th>
				<th style="width:5%">수량</th>
				<th style="width:15%">금액</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${empty list }">
					<tr>
						<td class="tb_line" colspan="6"><h2>장바구니가 비었습니다.</h2></td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="i" items="${list }">
					<tr class="tb_line">
						<td class="tb_line">${i.p_num }</td>
						<td class="tb_line">${i.p_name }</td>
						<td class="tb_line">시가: <fmt:formatNumber value="${i.p_price }" pattern="#,###"/>원<br>
							<font style="color:tomato;">(할인가: <fmt:formatNumber value="${i.p_saleprice }" pattern="#,###"/>원)</font>
						</td>
						<td class="tb_line">
							<form method="post">
								<input type="number" name="su" value="${i.quant }" style="width:50px; text-align: center;">
								<input type="hidden" name="m_idx" value="${mvo.idx }">
								<input type="hidden" name="idx" value="${i.idx }">
								<input type="button" value="수정" onclick="edit_cart(this.form)">
							</form>
						</td>
						<td class="tb_line"><fmt:formatNumber value="${i.totalPrice }" pattern="#,###"/>원</td>
					</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
		<tfoot>
		
			<tr>
				<td colspan="5" style="border: 0px solid black;">총 금액: <fmt:formatNumber value="${total }" pattern="#,###"/>원</td>
			</tr>
		</tfoot>
	</table>
	</div>
	<div style="top:-50px; position: relative; width: 120px; height:20px;">
		<button style="margin:-250px 810px 0 0; width: 50px;" onclick="checked_delete()">삭제</button>
	</div>
</body>
</html>