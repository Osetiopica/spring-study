<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="list.jsp">
		<jsp:param value="list" name="cmd"/>
	</jsp:forward>>
<!-- 	<c:redirect url="/MyController">
		<c:param value="list" name="cmd"/>
	</c:redirect> -->
	
</body>
</html>