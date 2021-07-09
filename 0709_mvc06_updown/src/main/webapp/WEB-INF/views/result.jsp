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
		<p>업로더 : ${name }</p>
		<p>파일명 : ${file_name }</p>
		<p>파일타입 : ${file_type }</p>
		<p>파일크기 : ${size }</p>
		<p>수정날짜 : ${lastDay }</p>
		<p><img alt="" src="resources/upload/${file_name }"></p>
		<p>다운로드 : <a href="down.do?file_name=${file_name }">${file_name }</a>
</body>
</html>