package com.ict.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ict.service.MyService;
import com.ict.vo.VO;

@Controller
public class MyController {
	
	private static final Logger logger = LoggerFactory.getLogger(MyController.class);
	
	@Autowired
	private MyService myService;

	@RequestMapping("calc.do")
	public ModelAndView calcCommand(VO vo) {
		ModelAndView mv = new ModelAndView("result");
		int sum = myService.getSum(vo.getKor(), vo.getEng(), vo.getMath());
		logger.info("sum:"+sum);
		double avg = myService.getAvg(sum);
		logger.info("avg:"+avg);
		String hak = myService.getHak(avg);
		logger.info("hak:"+hak);
		
		vo.setHap(sum);
		vo.setAvg(avg);
		vo.setHak(hak);
		
		mv.addObject("vo",vo);
		return mv;
	}

	public MyService getMyService() {
		return myService;
	}

	public void setMyService(MyService myService) {
		this.myService = myService;
	}
}
