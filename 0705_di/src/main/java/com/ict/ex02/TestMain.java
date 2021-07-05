package com.ict.ex02;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestMain {

	public static void main(String[] args) {
//		스프링 컨테이너 : 객체(Bean)을 생성하고 관리한다.
//		스프링 컨테이너  역할을 하는 인터페이스 : 
//		BeanFactory(I) <- ApplicationContext(I) <- ClassPathXmlApplicationContext(C)
		
//		스프링 컨테이너는 ApplicationContext에 의해서 관리된다.
//		ApplicationContext는 설정 정보를 참조해서 Bean 생성, DI, 생명주기를 관리한다.
//		설정 정보는 xml 파일이거나 어노테이션으로 구성되어 있다.
//		xml 파일은 spring bean configuration 파일을 선택해서 만든다.
		
//		config.xml 내용은 스프링 컨테이너가 읽어서 객체를 생성하고, 객체 간의 의존성을 주입한다.
		
		ApplicationContext context = new ClassPathXmlApplicationContext("com/ict/ex02/config.xml");
		Service service = (Service) context.getBean("service");
		service.biz();
	}
}
