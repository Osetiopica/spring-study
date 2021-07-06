package com.ict.ex07;

import org.springframework.stereotype.Component;

@Component("mysql")
public class MySQLDAO implements DAO {

	public MySQLDAO() {
		System.out.println("MySql 생성자");
	}

	@Override
	public void prn() {
		System.out.println("MySql 실행 메소드");
	}

}
