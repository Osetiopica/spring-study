<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${vo.op=='/' }"><h2>${vo.su1 } ${vo.op } ${vo.su2 } = ${result2 }</h2></c:when>
		<c:otherwise><h2>${vo.su1 } ${vo.op } ${vo.su2 } = ${result }</h2></c:otherwise>
	</c:choose>
	
	<h2>${vo.memNo }</h2>
	<h3>
		<c:forEach var="i" items="${vo.hobby }">${i } </c:forEach>
	</h3>
</body>
</html>