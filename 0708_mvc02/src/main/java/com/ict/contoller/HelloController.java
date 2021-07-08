package com.ict.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController{

	/*
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
	*/
	@RequestMapping("hello.do")
	public ModelAndView hello3Command() {
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("msg", "both");
		return mv;
	}
}
