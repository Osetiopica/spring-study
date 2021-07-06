package com.ict.ex05;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class NonDI_Map {

	private Map<String, String> map = new HashMap<String, String>();

	public void input() {
		map.put("name", "홍길동");
		map.put("kor", "90");
		map.put("eng", "80");
		map.put("math", "70");
	}

	public void prn() {
		Iterator<String> it = map.keySet().iterator();
		while (it.hasNext()) {
			String key = it.next();
			System.out.println(map.get(key));
		}
	}

	public void setMap(Map<String, String> map) {
		this.map = map;
	}
}