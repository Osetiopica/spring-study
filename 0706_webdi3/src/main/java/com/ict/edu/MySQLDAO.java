package com.ict.edu;

public class MySQLDAO implements DAO {

	public MySQLDAO() {
		System.out.println("MySql 생성자");
	}

	@Override
	public String prn() {
		return "MySql 실행 메소드";
	}

}
