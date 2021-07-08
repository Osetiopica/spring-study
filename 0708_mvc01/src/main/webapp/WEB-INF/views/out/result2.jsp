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
	<c:forEach var="i" items="${dogName }">
		${i } 
	</c:forEach>
	<br>
	<c:forEach var="i" items="${carName }">
		${i } 
	</c:forEach>
</body>
</html>