<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="com.ict.edu.Hello"%>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 사용 가능하지만 안 씀
		ApplicationContext context = new ClassPathXmlApplicationContext("com/ict/edu/config.xml");
		Hello hello = (Hello) context.getBean("hello");
		String msg = hello.sayHello();
		// System.out.println(msg);
		out.println("<h2>" + msg + "</h2>");
	--%>
	<%-- web 에서 DI 사용 방법 --%>
	<%--
  	 1.설정정보인 config.xml는 applicationContext.xml 변경
	   위치와 이름을 변경하면 안됨
	   (나중에 web.xml를 이용하면 변경 가능)
	   WEB-INF 안에 applicationContext.xml로 만들어야 된다.
	  	    
	  2.applicationContext.xml를 읽기 위해서 리스너를 만들어야 한다.
	    리스너는 프로젝트당 하나만 있으면 된다.
	    만드는 방법은 두 가지이다.
	    1) 자바에서 만드는 방법(리스너)
	    2) web.xml에서 만들기  
	--%>
	
	<%
		WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(application);
		Hello hello = (Hello) context.getBean("hello");
		String msg = hello.sayHello();
		out.println(msg);
	%>
</body>
</html>