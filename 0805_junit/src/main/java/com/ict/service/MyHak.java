package com.ict.service;

import org.springframework.stereotype.Service;

@Service
public class MyHak {
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
