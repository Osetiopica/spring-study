package com.ict.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ict.service.CalcService;
import com.ict.vo.CalcVO;

@Controller
public class MyController {
	
	@Autowired
	private CalcService calc;
	public void setCalcService(CalcService calc) {
		this.calc = calc;
	}
/*
	@RequestMapping("calc.do")
	public ModelAndView GradesCommand(CalcVO vo) {
		ModelAndView mv = new ModelAndView("result");
		int result = 0;
		double result2 = 0;
		switch (vo.getOp()) {
		case "+":
			result = calc.sum(vo.getSu1(),vo.getSu2());
			break;
		case "-":
			result = calc.sub(vo.getSu1(),vo.getSu2());
			break;
		case "*":
			result = calc.mul(vo.getSu1(),vo.getSu2());
			break;
		case "/":
			result2 = calc.div(vo.getSu1(),vo.getSu2());
			break;
		}
		mv.addObject("su1",vo.getSu1());
		mv.addObject("su2",vo.getSu2());
		mv.addObject("op",vo.getOp());
		mv.addObject("result", result);
		mv.addObject("result2", result2);
		mv.addObject("hobby", vo.getHobby());
		mv.addObject("memNo", vo.getMemNo());

		return mv;
	}
*/
	@RequestMapping("calc.do")
	public ModelAndView GradesCommand(@ModelAttribute("vo") CalcVO vo) {
		ModelAndView mv = new ModelAndView("result");
		int result = 0;
		double result2 = 0;
		switch (vo.getOp()) {
		case "+":
			result = calc.sum(vo.getSu1(),vo.getSu2());
			break;
		case "-":
			result = calc.sub(vo.getSu1(),vo.getSu2());
			break;
		case "*":
			result = calc.mul(vo.getSu1(),vo.getSu2());
			break;
		case "/":
			result2 = calc.div(vo.getSu1(),vo.getSu2());
			break;
		}
		mv.addObject("result", result);
		mv.addObject("result2", result2);
		
		return mv;
	}

}
