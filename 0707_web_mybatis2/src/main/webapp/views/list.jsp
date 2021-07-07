<%@page import="com.ict.db.VO"%>
<%@page import="com.ict.db.DAO"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(application);
	DAO dao = (DAO) context.getBean("dao");
	List<VO> list = dao.getList();
	request.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모두보기</title>
<style type="text/css">
fieldset {
	width: 700px;
	margin: auto;
}

div {
	text-align: center;
	margin: 100px;
	auto;
}

table, th, td {
	padding: 10px;
	border: 1px solid black;
	border-collapse: collapse;
	margin: auto;
}

thead {
	background-color: skyblue;
}

input {
	padding: 10px;
}

a {
	text-decoration: none;
	color: blue;
}

</style>
</head>
<body>
	<div>
			<fieldset>
				<legend>방명록</legend>
				<a href="write.jsp">[방명록 쓰기]</a><br><br>
				<table>
					<thead>
						<tr>
							<th>ID</th>
							<th>NAME</th>
							<th>TITLE</th>
							<th>REG</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
						<c:when test="${empty list }">
							<tr>
								<td colspan="4" style="width: 450px;">아무 글도 없다.</td>
							</tr>		
						</c:when>
						<c:otherwise>
						<c:forEach var="i" items="${list }"> <%-- varStatus="vs"> --%>
							<tr>
								<%-- <td style="width: 50px;">${vs.count }</td> --%>
								<td style="width: 50px;">${i.id }</td>
								<td style="width: 100px;">${i.name }</td>
								<td style="width: 300px;"><a href="onelist.jsp?id=${i.id }">${i.title }</a></td>
								<td>${i.reg }</td>
							</tr>
						</c:forEach>
						</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</fieldset>
	</div>
</body>
</html>