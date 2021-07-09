package com.ict.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ict.service.CalcService;

@Controller
public class MyController {
//	CalcService calc = new CalcService();
	@Autowired
	private CalcService calc;
	
	public void setCalc(CalcService calc) {
		this.calc = calc;
	}
	
	@RequestMapping("sum.do")
	public ModelAndView sumCommand() {
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("result", calc.sum());
		return mv;
	}
	@RequestMapping("sub.do")
	public ModelAndView subCommand() {
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("result", calc.sub());
		return mv;
	}
	@RequestMapping("mul.do")
	public ModelAndView mulCommand() {
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("result", calc.mul());
		return mv;
	}
	@RequestMapping("div.do")
	public ModelAndView divCommand() {
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("result", calc.div());
		return mv;
	}
}
