package com.ict.service;

import org.springframework.stereotype.Service;

@Service
public class MyService {

	public int getSum(int kor, int eng, int math) {
		return kor + eng + math;
	}

	public double getAvg(int sum) {
		return (int) (sum / 3.0 * 10) / 10.0;
	}

	public String getHak(double avg) {
		String hak = "";
		if(avg>=90) {
			hak="A";
		}else if(avg>=80) {
			hak="B";
		}else if(avg>=70) {
			hak="C";
		}else {
			hak="F";
		}
		return hak;
	}
}
