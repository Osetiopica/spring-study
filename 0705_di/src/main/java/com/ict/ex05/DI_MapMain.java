package com.ict.ex05;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class DI_MapMain {
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("com/ict/ex05/config.xml");
		DI_Map map = (DI_Map) context.getBean("map");
		map.prn();
	}
}