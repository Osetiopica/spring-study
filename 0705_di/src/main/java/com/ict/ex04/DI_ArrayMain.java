package com.ict.ex04;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class DI_ArrayMain {
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("com/ict/ex04/config.xml");
		DI_Array arr = (DI_Array) context.getBean("arr");
		arr.s_prn();
		arr.i_prn();
	}
}
