package com.ict.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ict.service.CalcService;

@Controller
public class CalcController {
	@Inject
	private CalcService calc;

	public void setCalc(CalcService calc) {
		this.calc = calc;
	}

	@RequestMapping("calc.do")
	public ModelAndView calcCommand(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("result");
		String cmd = request.getParameter("cmd");
		int result = 0;
		switch (cmd) {
		case "1":
			result = calc.sum();
			break;
		case "2":
			result = calc.sub();
			break;
		case "3":
			result = calc.mul();
			break;
		case "4":
			result = calc.div();
			break;
		}
		mv.addObject("result", result);
		return mv;
	}
}
