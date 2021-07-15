package com.ict.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ict.service.MyService;
import com.ict.vo.VO;

@Controller
public class MyController {

	@Autowired
	private MyService myService;

	@RequestMapping("list.do")
	public ModelAndView listCommand() {
		try {
			ModelAndView mv = new ModelAndView();
			List<VO> list = myService.getList();
			mv.addObject("list", list);
			return mv;
		} catch (Exception e) {
			System.out.println(e);
			return new ModelAndView("error");
		}
	}

	@RequestMapping("write.do")
	public ModelAndView WriteCommand() {
		return new ModelAndView("write");
	}

	@RequestMapping(value = "write_ok.do", method = RequestMethod.GET)
	public ModelAndView writeOkCommand() {
		return new ModelAndView("redirect:write.do");
	}

	@RequestMapping(value = "write_ok.do", method = RequestMethod.POST)
	public ModelAndView writeOkCommand(HttpServletRequest request, VO vo) {
		try {
			myService.getInsert(vo);
			return new ModelAndView("redirect:list.do");
		} catch (Exception e) {
			System.out.println(e);
			return new ModelAndView("error");
		}
	}

	@RequestMapping("onelist.do")
	public ModelAndView detailCommand(@RequestParam("id") String id) {
		try {
			ModelAndView mv = new ModelAndView("onelist");
			VO vo = myService.getDetail(id);
			mv.addObject("vo", vo);
			return mv;
		} catch (Exception e) {
			System.out.println(e);
			return new ModelAndView("error");
		}
	}

	@RequestMapping("update.do")
	public ModelAndView updateCommand(@RequestParam("id") String id) {
		try {
			ModelAndView mv = new ModelAndView("update");
			VO vo = myService.getDetail(id);
			mv.addObject("vo", vo);
			return mv;
		} catch (Exception e) {
			System.out.println(e);
			return new ModelAndView("error");
		}
	}

	@RequestMapping(value = "update_ok.do", method = RequestMethod.POST)
	public ModelAndView updateOkCommand(HttpServletRequest request, VO vo) {
		try {
			myService.getUpdate(vo);
			return new ModelAndView("redirect:onelist.do?id=" + vo.getId());
		} catch (Exception e) {
			System.out.println(e);
			return new ModelAndView("error");
		}
	}

	@RequestMapping("delete.do")
	public ModelAndView deleteCommand(@ModelAttribute("vo") VO vo) {
		return new ModelAndView("delete");
	}

	@RequestMapping("delete_ok.do")
	public ModelAndView deleteOkCommand(@RequestParam("id") String id) {
		try {
			myService.getDelete(id);
			return new ModelAndView("redirect:list.do");
		} catch (Exception e) {
			System.out.println(e);
			return new ModelAndView("error");
		}
	}

}
