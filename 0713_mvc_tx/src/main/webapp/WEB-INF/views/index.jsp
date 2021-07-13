<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>결제</h2>
	<form action="result.do" method="post">
		<p>id: <input type="text" name="consumerid" required></p>
		<p>수: <input type="number" name="amount" required></p>
		<input type="submit" value="buy">
	</form>
	
	<h2>결제</h2>
	<form action="result2.do" method="post">
		<p>id: <input type="text" name="consumerid" required></p>
		<p>수: <input type="number" name="amount" required></p>
		<input type="submit" value="buy">
	</form>
</body>
</html>