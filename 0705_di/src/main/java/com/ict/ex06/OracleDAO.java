package com.ict.ex06;

public class OracleDAO implements DAO {

	public OracleDAO() {
		System.out.println("Oracle 생성자");
	}

	@Override
	public void prn() {
		System.out.println("Oracle 실행 메소드");
	}

}
