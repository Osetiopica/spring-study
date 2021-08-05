package com.ict.test2;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import com.ict.service.MyAvg;
import com.ict.service.MyHak;
import com.ict.service.MySum;

public class MyServiceTest {
	
	MySum testA;
	MyAvg testB;
	MyHak testC;

	@Before
	public void test_be() {
		testA = new MySum();
		testB = new MyAvg();
		testC = new MyHak();
	}
	@Test
	public void testSum() {
		assertEquals(270, testA.getSum(90, 90, 90));
	}
	@Test
	public void testAvg() {
		assertEquals(95, (int)testB.getAvg(285));
	}
	@Test
	public void testHak() {
		assertEquals("A", testC.getHak(90));
	}

}
