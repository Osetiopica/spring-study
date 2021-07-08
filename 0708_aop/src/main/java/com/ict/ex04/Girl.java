package com.ict.ex04;

import org.springframework.stereotype.Component;

@Component("girl")
public class Girl implements Person {
//	부팅
//	쇼핑
//	드라마
//	종료
	
	@Override
	public void doSomething() {
		try {
		System.out.println("쇼핑");
		int i = 1/0;
		System.out.println("드라마");
		} catch (Exception e) {
		}
	}

	@Override
	public void play() {
		System.out.println("독서");
	}
	
}
