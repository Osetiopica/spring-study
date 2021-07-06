package com.ict.ex07;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("service")
public class Service {
	@Autowired
	private DAO dao;
	public Service() {
		System.out.println("서비스 생성자");
	}
	public Service(DAO dao) {
		this.dao = dao;
		System.out.println("서비스 생성자");
	}
	public void setDao(DAO dao) {
		this.dao = dao;
	}
	public void biz() {
		dao.prn();
	}
}
