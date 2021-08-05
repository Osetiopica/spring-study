package com.ict.test;

import static org.junit.Assert.*;

import java.util.Arrays;
import java.util.Collection;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;

import com.ict.service.MyService;

@RunWith(Parameterized.class)
public class MyServiceTest3 {
	
	MyService myService;

	private int expected;
	private int su1;
	private int su2;
	private int su3;
	
	public MyServiceTest3(int expected, int su1, int su2, int su3) {
		super();
		this.expected=expected;
		this.su1=su1;
		this.su2=su2;
		this.su3=su3;
	}
	
	@Before
	public void test_be() {
		myService = new MyService();
	}
	@Parameters
	public static Collection<Integer[]> getTestParams(){
		return Arrays.asList(new Integer[][] {
			{270,90,90,90},{180,60,60,60},{285,95,95,95}
		});
	}
	@Test
	public void test() {
		assertEquals(expected, myService.getSum(su1, su2, su3));
	}

}
