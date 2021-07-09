package com.ict.service;

import org.springframework.stereotype.Service;

@Service("calc")
public class CalcService {
	public int sum() {
		return 4+2;
	}
	public int sub() {
		return 4-2;
	}
	public int mul() {
		return 4*2;
	}
	public int div() {
		return 4/2;
	}
}
