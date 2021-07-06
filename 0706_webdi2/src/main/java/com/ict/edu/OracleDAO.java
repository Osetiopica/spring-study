package com.ict.edu;

public class OracleDAO implements DAO {

	public OracleDAO() {
		System.out.println("Oracle 생성자");
	}

	@Override
	public String prn() {
		return "Oracle 실행 메소드";
	}

}
