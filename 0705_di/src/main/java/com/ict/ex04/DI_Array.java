package com.ict.ex04;

public class DI_Array {

	private String[] arr1;
	private int[] arr2;

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
