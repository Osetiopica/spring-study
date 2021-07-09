<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	input{
		padding: 5px;
	}
</style>
</head>
<body>
	<form action="calc.do">
		<input type="number" name="su1">
		<select name="op">
			<option value="+">+</option>
			<option value="-">-</option>
			<option value="*">*</option>
			<option value="/">/</option>
		</select>
		<input type="number" name="su2">
		<br>
		취미 <input type="checkbox" name="hobby" value="축구">축구
		<input type="checkbox" name="hobby" value="농구">농구
		<input type="checkbox" name="hobby" value="배구">배구
		<input type="checkbox" name="hobby" value="야구">야구
		<br>
		<input type="hidden" name="memNo" value="1234">
		<input type="submit">
	</form>
</body>
</html>