package com.ict.ex01;

public class TestMain {

	public static void main(String[] args) {
		Boy boy = new Boy();
		Girl girl = new Girl();
		
		PersonProxy proxy = new PersonProxy();
		proxy.setPerson(boy);
		proxy.doPlay();
	}

}
