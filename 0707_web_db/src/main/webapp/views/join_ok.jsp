<%@page import="com.ict.db.VO"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.db.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% 
request.setCharacterEncoding("utf-8");
VO vo = new VO();
vo.setId(request.getParameter("id"));
vo.setPw(request.getParameter("pw"));
vo.setName(request.getParameter("name"));
vo.setAge(request.getParameter("age"));
vo.setAddr(request.getParameter("addr"));
int result = DAO.getInstance().getInsert(vo);
if(result>0){
	response.sendRedirect("index.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	a{
		text-decoration: none;
		color: black;
	}
	div{
		text-align: center;
		margin: auto;
		width: 500px;
		min-height: 300px;
	}
	table, th, td{
		width: 500px;
		border: 1px solid black;
		border-collapse: collapse;
		padding: 5px 10px;
	}
	td, input{
		padding: 10px;
	}
</style>
</head>
<body>
</body>
</html>