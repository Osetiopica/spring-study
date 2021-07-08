<%@page import="com.ict.db.VO"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.db.DAO"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	request.setCharacterEncoding("utf-8");
	String search = request.getParameter("search");
	String keyword = request.getParameter("keyword");
	
	WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(application);
	DAO dao = (DAO) context.getBean("dao");
	List<VO> list = dao.getDynamic(search, keyword);
	request.setAttribute("list", list);
	request.setAttribute("search", search);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>
	<c:choose>
		<c:when test="${search==1}">번호</c:when>
		<c:when test="${search==2}">아이디</c:when>
		<c:when test="${search==3}">이름</c:when>
		<c:when test="${search==4}">나이</c:when>
	</c:choose>
	</h2>
	<c:choose>
		<c:when test="empty list">아무것도 없음</c:when>
		<c:otherwise>
			<c:forEach var="i" items="${list }">
				<p>${i.idx } ${i.id } ${i.pw } ${i.name } ${i.age } ${i.addr } ${i.reg }</p>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</body>
</html>