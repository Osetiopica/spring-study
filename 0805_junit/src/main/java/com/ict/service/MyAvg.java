package com.ict.service;

import org.springframework.stereotype.Service;

@Service
public class MyAvg {
	public double getAvg(int sum) {
		return (int) (sum / 3.0 * 10) / 10.0;
	}
}
