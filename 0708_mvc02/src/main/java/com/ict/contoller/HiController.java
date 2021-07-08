package com.ict.contoller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;

@Controller
public class HiController {
	
	@RequestMapping(value = "hi.do", method = RequestMethod.GET)
	public ModelAndView hiCommand() {
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("msg", "welcome spring mvc");
		return mv;
	}
	
}
