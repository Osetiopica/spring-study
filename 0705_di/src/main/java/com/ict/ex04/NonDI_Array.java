package com.ict.ex04;

public class NonDI_Array {

	private String[] arr1 = { "1", "2", "3", "4" };
	private int[] arr2 = { 1, 2, 3, 4 };

	public void s_prn() {
		for (String i : arr1) {
			System.out.println(i + 10);
		}
	}

	public void i_prn() {
		for (int i : arr2) {
			System.out.println(i + 10);
		}
	}

	public String[] getArr1() {
		return arr1;
	}

	public void setArr1(String[] arr1) {
		this.arr1 = arr1;
	}

	public int[] getArr2() {
		return arr2;
	}

	public void setArr2(int[] arr2) {
		this.arr2 = arr2;
	}
}
