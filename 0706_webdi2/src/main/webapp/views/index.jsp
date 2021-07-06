<%@page import="com.ict.edu.Service"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(application);
		Service service = (Service) context.getBean("service");
		String msg = service.biz();
		out.println("<b2>"+msg+"</b2>");
	%>
</body>
</html>