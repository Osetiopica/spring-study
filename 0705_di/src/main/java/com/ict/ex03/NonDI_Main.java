package com.ict.ex03;

public class NonDI_Main {
	public static void main(String[] args) {
		NonDI_MyProcess process = new NonDI_MyProcess();
		process.prn();
		NonDI_MyProcess process2 = new NonDI_MyProcess("둘리", 3);
		process2.prn();
		NonDI_MyProcess process3 = new NonDI_MyProcess();
		process3.setName("마이콜");
		process3.setAge(2);
		process3.prn();
	}
}
