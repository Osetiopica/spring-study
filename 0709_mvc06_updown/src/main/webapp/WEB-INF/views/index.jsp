<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>COS 업로드</h3>
	<form action="up.do" method="post" enctype="multipart/form-data">
		<p>업로더 <input type="text" name="name"></p>
		<p>파일 <input type="file" name="file_name"></p>
		<p><input type="submit"></p>
	</form>
	<h3>Commons 업로드</h3>
	<form action="up2.do" method="post" enctype="multipart/form-data">
		<p>업로더 <input type="text" name="name"></p>
		<p>파일 <input type="file" name="file_name"></p>
		<p><input type="submit"></p>
	</form>
</body>
</html>