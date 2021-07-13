package com.ict.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ict.service.MyService;
import com.ict.vo.CVO;
import com.ict.vo.TVO;
import com.ict.vo.VO;

@Controller
public class MyController {

	@Autowired
	private MyService myService;

	@RequestMapping("result.do")
	public ModelAndView resultCommand(VO vo) {
		ModelAndView mv = new ModelAndView("result");
		try {
			vo.setCountnum(vo.getAmount());
			int res = myService.insertCT(vo);
			mv.addObject("vo", vo);
			mv.addObject("res", res);
			return mv;
		} catch (Exception e) {
			mv.addObject("res", 0);
			System.out.println(e);
		}
		return mv;
	}
	
	@RequestMapping("result2.do")
	public ModelAndView resultCommand(@ModelAttribute("cvo") CVO cvo, @ModelAttribute("tvo") TVO tvo) {
		ModelAndView mv = new ModelAndView("result");
		try {
			tvo.setCountnum(cvo.getAmount());
			int res = myService.insertCT2(cvo, tvo);
			mv.addObject("res", res);
			return mv;
		} catch (Exception e) {
			mv.addObject("res", 0);
			System.out.println(e);
		}
		return mv;
	}
	
}
