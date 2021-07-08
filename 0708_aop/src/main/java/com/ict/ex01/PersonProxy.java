package com.ict.ex01;

public class PersonProxy {
	private Person person;

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public void doPlay() {
		try {
			System.out.println("부팅");
			int a = 1 / 0;
			person.doSomething();
		} catch (Exception e) {
			System.out.println("엄크");
		} finally {
			System.out.println("종료");
			System.out.println("공부");
		}
	}

}
