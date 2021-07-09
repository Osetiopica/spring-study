package com.ict.service;

import org.springframework.stereotype.Service;

@Service("calc")
public class CalcService {

	public int sum(String su1, String su2) {
		return Integer.parseInt(su1) + Integer.parseInt(su2);
	}

	public int sub(String su1, String su2) {
		return Integer.parseInt(su1) - Integer.parseInt(su2);
	}

	public int mul(String su1, String su2) {
		return Integer.parseInt(su1) * Integer.parseInt(su2);
	}

	public double div(String su1, String su2) {
		return ((double) Integer.parseInt(su1) / Integer.parseInt(su2) * 10) / 10.0;
	}

}
