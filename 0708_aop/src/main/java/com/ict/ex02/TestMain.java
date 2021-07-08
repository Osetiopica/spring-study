package com.ict.ex02;

public class TestMain {

	public static void main(String[] args) {
		Boy boy = new Boy();
//		Girl girl = new Girl();
		
		PersonProxy proxy = new PersonProxy();
		proxy.setPerson(boy);
		proxy.setBefore(new BeforeImpl());
		proxy.doPlay();
		proxy.setAfter(new AfterImpl());
	}

}
