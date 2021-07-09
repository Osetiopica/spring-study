package com.ict.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ict.service.MyProcess;
import com.ict.vo.VO;

@Controller
public class MyController {
	@Autowired
	private MyProcess myProcess;

	public void setMyProcess(MyProcess myProcess) {
		this.myProcess = myProcess;
	}
/*
	@RequestMapping("grades.do")
	public ModelAndView GradesCommand(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("result");
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));

		int sum = myProcess.getSum(kor, eng, math);
		double avg = myProcess.getAvg(sum);
		String hak = myProcess.getHak(avg);

		mv.addObject("name", name);
		mv.addObject("sum", sum);
		mv.addObject("avg", avg);
		mv.addObject("hak", hak);

		return mv;
	}
	*/
	/*
	@RequestMapping("grades.do")
	public ModelAndView GradesCommand(VO vo) {
		ModelAndView mv = new ModelAndView("result");
		
		int sum = myProcess.getSum(vo.getKor(), vo.getEng(), vo.getMath());
		double avg = myProcess.getAvg(sum);
		String hak = myProcess.getHak(avg);
		
//		mv.addObject("name", vo.getName());
//		mv.addObject("sum", sum);
//		mv.addObject("avg", avg);
//		mv.addObject("hak", hak);
		
		vo.setSum(String.valueOf(sum));
		vo.setAvg(String.valueOf(avg));
		vo.setHak(hak);
		
		mv.addObject("vo", vo);
		
		return mv;
	}
	*/
	/*
	@RequestMapping("grades.do")
	public ModelAndView GradesCommand(@ModelAttribute("mvo") VO vo) {
		ModelAndView mv = new ModelAndView("result");
		
		int sum = myProcess.getSum(vo.getKor(), vo.getEng(), vo.getMath());
		double avg = myProcess.getAvg(sum);
		String hak = myProcess.getHak(avg);

//		mv.addObject("name", vo.getName());
//		mv.addObject("sum", sum);
//		mv.addObject("avg", avg);
//		mv.addObject("hak", hak);
		
		vo.setSum(String.valueOf(sum));
		vo.setAvg(String.valueOf(avg));
		vo.setHak(hak);
		
//		mv.addObject("vo", vo);
		
		return mv;
	}
	*/
	@RequestMapping("grades.do")
	public ModelAndView GradesCommand(VO vo, @RequestParam("cPage") String cPage) {
		ModelAndView mv = new ModelAndView("result");
		
		int sum = myProcess.getSum(vo.getKor(), vo.getEng(), vo.getMath());
		double avg = myProcess.getAvg(sum);
		String hak = myProcess.getHak(avg);
		
//		mv.addObject("name", vo.getName());
//		mv.addObject("sum", sum);
//		mv.addObject("avg", avg);
//		mv.addObject("hak", hak);
		
		vo.setSum(String.valueOf(sum));
		vo.setAvg(String.valueOf(avg));
		vo.setHak(hak);
		
		mv.addObject("vo", vo);
		
		return mv;
	}

}
