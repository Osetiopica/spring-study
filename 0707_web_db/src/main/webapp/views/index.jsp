<%@page import="com.ict.db.VO"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.db.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% 
	List<VO> list = DAO.getInstance().getList();
	pageContext.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	a{
		text-decoration: none;
		color: black;
	}
	div{
		text-align: center;
		margin: auto;
		width: 500px;
		min-height: 300px;
	}
	table, th, td{
		width: 500px;
		border: 1px solid black;
		border-collapse: collapse;
		padding: 5px 10px;
	}
</style>
</head>
<body>
	<div>
		<h1>전체 회원 정보 보기</h1>
		<p><a href="join.jsp">[인원추가]</a></p>
		<table>
			<thead>
				<tr>
					<th style="width:20%;">idx</th>
					<th style="width:40%;">id</th>
					<th style="width:40%;">name</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty list }">
						<tr>
							<td colspan="3"><h2>아무 정보도 없다.</h2></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="i" items="${list }">
							<tr>
								<td>${i.idx }</td>
								<td>${i.id }</td>
								<td>${i.name }</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
</body>
</html>