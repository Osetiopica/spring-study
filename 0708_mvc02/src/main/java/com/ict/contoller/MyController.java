package com.ict.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {
	
	@RequestMapping(value="hello.do", method = RequestMethod.GET)
	public ModelAndView helloCommand() {
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("msg", "get");
		return mv;
	}
	@RequestMapping(value="hello.do", method = RequestMethod.POST)
	public ModelAndView hello2Command() {
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("msg", "post");
		return mv;
	}
	
	@RequestMapping(value = "hi.do", method = RequestMethod.GET)
	public ModelAndView hiCommand() {
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("msg", "welcome spring mvc");
		return mv;
	}

}
