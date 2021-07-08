package com.ict.ex03;

public class Boy implements Person {
//	부팅
//	게임
//	영화
//	종료

	@Override
	public void doSomething() {
		try {
		System.out.println("게임");
			int i = 1 / 0;
			System.out.println("영화");
		} catch (Exception e) {
		}
	}

	@Override
	public void play() {
		System.out.println("운동");
	}
}
