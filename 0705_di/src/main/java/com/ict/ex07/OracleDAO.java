package com.ict.ex07;

import org.springframework.stereotype.Component;

@Component("dao")
public class OracleDAO implements DAO {

	public OracleDAO() {
		System.out.println("Oracle 생성자");
	}

	@Override
	public void prn() {
		System.out.println("Oracle 실행 메소드");
	}

}
