package com.ict.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class ArrayController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("out/result2");
		
		String[] dogName = {"호두", "땅콩"};
		ArrayList<String> carName = new ArrayList<String>();
		carName.add("제네시스");
		carName.add("에쿠스");
		carName.add("아반떼");
		mv.addObject("dogName", dogName);
		mv.addObject("carName", carName);
		
		return mv;
	}
	
}
