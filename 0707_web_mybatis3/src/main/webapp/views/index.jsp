<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="result.jsp" method="post">
		<select name="search" required>
			<option value="0">000</option>
			<option value="1">번호</option>
			<option value="2">아이디</option>
			<option value="3">이름</option>
			<option value="4">나이</option>
		</select>
		<input type="text" name="keyword" required>
		<input type="submit">
	</form>
</body>
</html>