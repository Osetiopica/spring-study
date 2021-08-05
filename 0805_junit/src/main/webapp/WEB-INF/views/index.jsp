<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
input{
	padding:5px;
	margin:5px;
}
div{
	width:200px;
	border:1px solid black;
	margin:0px auto;
}
</style>
</head>
<body>
	<div>
		<form action="calc.do" method="post">
			<input type="text" name="name" placeholder="name" required="required"><br>
			<input type="number" name="kor" placeholder="kor" required="required"><br>
			<input type="number" name="eng" placeholder="eng" required="required"><br>
			<input type="number" name="math" placeholder="math" required="required"><br>
			<input type="submit" style="float:right;"><br>
			<input type="hidden" name="cPage" value="2">
		</form>
	</div>
</body>
</html>