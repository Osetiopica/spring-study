package com.ict.test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import com.ict.service.MyService;

public class MyServiceTest2 {
	
	MyService myService;

	@Before
	public void test_be() {
		myService = new MyService();
	}
	@Test
	public void test() {
		assertEquals(260, myService.getSum(90, 90, 80));
		assertEquals(86, (int)myService.getAvg(260));
		assertEquals("B", myService.getHak(86));
	}

}
