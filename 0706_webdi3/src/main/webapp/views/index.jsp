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
	<%--
	applicationContext.xml를 읽기 위해서 리스너를 만들어야 한다.
	    리스너는 프로젝트당 하나만 있으면 된다.
	    만드는 방법은 두가지이다.
	    1) 자바에서 만드는 방법(리스너)
	    2) web.xml에서 만들기
	    
	    1. web.xml에서 리스너 만들기
	   		<listener>
		     	<listener-class>org.springframework.web.context.ContextLoaderListener</listener-class>
	     	</listener>
	    
	     2. web.xml에서 applicationContext.xml의 위치와 이름변경이 가능
	     	<context-param>
				<param-name>contextConfigLocation</param-name>
				<param-value>WEB-INF/spring/root-context.xml</param-value>
		  </context-param>
	 --%> 
	<%
		WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(application);
		Service service = (Service) context.getBean("service");
		String msg = service.biz();
		out.println("<b2>"+msg+"</b2>");
	%>
</body>
</html>