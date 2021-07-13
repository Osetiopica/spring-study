package com.ict.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ict.vo.VO;

//일반 controller는 ModelAndView를 return
//restController는 단순 문자열을 text로, 객체와 ArrayList를 json으로 return 
//Spring Rest API 기본은 JSON
@RestController
public class MyController {

	@RequestMapping(value = "text.do", produces = "text/html; charset=utf-8")
	@ResponseBody
	public String textCommand() {
		StringBuffer sb = new StringBuffer();
//		sb.append("<h2 style='color:red'>Hello</h2>");

		sb.append("1, 홍일동, 21, 서울/");
		sb.append("2, 홍이동, 22, 서울/");
		sb.append("3, 홍삼동, 23, 서울/");
		sb.append("4, 홍사동, 24, 서울/");
		sb.append("5, 홍오동, 25, 서울");

		return sb.toString();
	}

	@RequestMapping(value = "json.do", produces = "application/json; charset=utf-8")
	@ResponseBody
	public VO jsonCommand() {

		VO vo = new VO();
		vo.setIdx("1");
		vo.setName("마루");
		vo.setAge("4");
		vo.setAddr("서울");

		return vo;
	}

	@RequestMapping(value = "json2.do", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<VO> json2Command() {

		List<VO> list = new ArrayList<VO>();
		VO vo = new VO();
		vo.setIdx("1");
		vo.setName("마루");
		vo.setAge("4");
		vo.setAddr("서울");
		list.add(vo);

		vo = new VO();
		vo.setIdx("2");
		vo.setName("둘둘");
		vo.setAge("6");
		vo.setAddr("서울");
		list.add(vo);

		vo = new VO();
		vo.setIdx("3");
		vo.setName("삼삼");
		vo.setAge("8");
		vo.setAddr("서울");
		list.add(vo);

		return list;
	}

	@RequestMapping(value = "json3.do", produces = "application/json; charset=utf-8")
	@ResponseBody
	public String json3Command() {

		StringBuffer sb = new StringBuffer();
		try {
			URL url = new URL("http://openapi.seoul.go.kr:8088/sample/json/SeoulLibraryTime/1/5/");
			URLConnection conn = url.openConnection();
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
			String msg = "";
			while ((msg = br.readLine()) != null) {
				sb.append(msg + "\n");
			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return sb.toString();
	}

}
