package com.ict.ex03;

public class Girl implements Person {
//	부팅
//	쇼핑
//	드라마
//	종료
	
	@Override
	public void doSomething() {
		System.out.println("쇼핑");
		System.out.println("드라마");
	}

	@Override
	public void play() {
		System.out.println("독서");
	}
	
}
