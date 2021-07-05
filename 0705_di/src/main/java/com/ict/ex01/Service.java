package com.ict.ex01;

public class Service {
	
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
