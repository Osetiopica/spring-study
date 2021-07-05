package com.ict.ex01;

public class TestMain {

	public static void main(String[] args) {
		/*
		OracleDAO oracleDAO = new OracleDAO();
		Service service = new Service(oracleDAO);
		service.biz();
		
		System.out.println("------------------------");
		
		MySQLDAO mysqlDAO = new MySQLDAO();
		Service service2 = new Service();
		service2.setDao(mysqlDAO);
		service2.biz();
		*/
		
		DAO dao = null;
		int su = 2;
		switch (su) {
			case 1: dao = new OracleDAO(); break;
			case 2: dao = new MySQLDAO(); break;
		}
		Service service = new Service(dao);
		service.biz();
		
		System.out.println("------------------------");
		
		Service service2 = new Service();
		service2.setDao(dao);
		service2.biz();
		
	}
}
