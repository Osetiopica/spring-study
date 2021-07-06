package com.ict.ex03;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class DI_Main {

	public static void main(String[] args) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("com/ict/ex03/config.xml");
		DI_MyProcess process = (DI_MyProcess) context.getBean("process");
		process.prn();
		DI_MyProcess process2 = (DI_MyProcess) context.getBean("process2");
		process2.prn();
		DI_MyProcess process3 = (DI_MyProcess) context.getBean("process3");
		process3.prn();
		
	}
}
