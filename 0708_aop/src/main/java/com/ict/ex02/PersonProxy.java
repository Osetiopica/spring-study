package com.ict.ex02;

public class PersonProxy {
	private Person person;
	private Before before;
	private After after;

	public void doPlay() {
		try {
			before.pre();
//			int a = 1 / 0;
			person.doSomething();
			after.next();
		} catch (Exception e) {
			System.out.println("엄크");
		} finally {
			System.out.println("공부");
		}
	}
	
	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public Before getBefore() {
		return before;
	}

	public void setBefore(Before before) {
		this.before = before;
	}

	public After getAfter() {
		return after;
	}

	public void setAfter(After after) {
		this.after = after;
	}


}
