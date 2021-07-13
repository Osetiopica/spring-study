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

	<h2>결과</h2>
	<c:choose>
		<c:when test="${res==1 }">
			<h2>
				${vo.consumerid} >> ${vo.amount } >> ${vo.countnum }
			</h2>
		</c:when>
		<c:otherwise>
			<h2>
				결제 실패
			</h2>
		</c:otherwise>
	</c:choose>

	<h2>결과</h2>
	<c:choose>
		<c:when test="${res==1 }">
			<h2>
				${cvo.consumerid} >> ${cvo.amount } >> ${tvo.countnum }
			</h2>
		</c:when>
		<c:otherwise>
			<h2>
				결제 실패
			</h2>
		</c:otherwise>
	</c:choose>
	
</body>
</html>