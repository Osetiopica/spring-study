package com.ict.edu;

import java.util.Calendar;

public class MyProcess {
	public String today() {
		StringBuffer sb = new StringBuffer();
		Calendar now = Calendar.getInstance();
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH)+1;
		int day = now.get(Calendar.DATE);
		
		sb.append(String.valueOf(year)+"년 ");
		sb.append(String.valueOf(month)+"월 ");
		sb.append(String.valueOf(day)+"일 ");
		
		return sb.toString();
	}
}
