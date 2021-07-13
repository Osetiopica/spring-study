package com.ict.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ict.service.MyService;
import com.ict.vo.VO;

@Controller
public class MyController {
	@Autowired
	private MyService myService;

	@RequestMapping(value = "list.do", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<VO> listCommand() {
		try {
			return myService.selectAll();
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	@RequestMapping(value = "idchk.do", produces = "text/html; charset=utf-8")
	@ResponseBody
	public String idchkCommand(@RequestParam("id") String id) {
		try {
			VO vo = myService.selectIDchk(id);
			if(vo.getId()==null) {
				return "0";
			} else {
				return "1";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
}
