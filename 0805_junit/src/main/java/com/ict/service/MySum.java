package com.ict.service;

import org.springframework.stereotype.Service;

@Service
public class MySum {
	public int getSum(int kor, int eng, int math) {
		return kor + eng + math;
	}
}
