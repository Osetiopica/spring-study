package com.ict.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ict.vo.VO;
import com.oreilly.servlet.MultipartRequest;

@Controller
public class MyController2 {
	@RequestMapping(value = "up2.do", method = RequestMethod.GET)
	public ModelAndView getUpCommand() {
		return new ModelAndView("index");
	}

	@RequestMapping(value = "up2.do", method = RequestMethod.POST)
	public ModelAndView postUpCommand(HttpServletRequest request, VO vo) {
		ModelAndView mv = new ModelAndView("result");
		try {
			String path = request.getSession().getServletContext().getRealPath("resources/upload");
			String name = vo.getName();
			String file_name = vo.getFile_name().getOriginalFilename(); // 중복된 이름의 파일 업로드 불가
			String file_type = vo.getFile_name().getContentType();
			long size = vo.getFile_name().getSize() / 1024; // KB
			SimpleDateFormat day = new SimpleDateFormat("yyyy년 MM월 dd일 E요일 HH시 mm분 ss초");

			byte[] in = vo.getFile_name().getBytes(); // 업로드 할 파일 변환
			File out = new File(path, file_name); // 업로드 파일의 위치, 이름 지정
			String lastDay = day.format(out.lastModified());
			FileCopyUtils.copy(in, out);
			
			mv.addObject("name", name);
			mv.addObject("file_name", file_name);
			mv.addObject("file_type", file_type);
			mv.addObject("size", size);
			mv.addObject("lastDay", lastDay);
		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}

	@RequestMapping(value = "down2.do", method = RequestMethod.GET)
	public void getFileDown(HttpServletRequest request, HttpServletResponse response) {
		FileInputStream fis = null;
		BufferedInputStream bis = null;
		BufferedOutputStream bos = null;
		try {
			String file_name = request.getParameter("file_name");
			String path = request.getSession().getServletContext().getRealPath("resources/upload/" + file_name);
			response.setContentType("application/x-msdownload");
			response.setHeader("Content-Disposition", "attachment; filename=" + URLEncoder.encode(file_name, "utf-8"));
			File file = new File(new String(path.getBytes("utf-8")));
			int b;
			fis = new FileInputStream(file);
			bis = new BufferedInputStream(fis);
			bos = new BufferedOutputStream(response.getOutputStream());
			while ((b = bis.read()) != -1) {
				bos.write(b);
			}
			bos.flush();
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				bos.close();
				bis.close();
				fis.close();
			} catch (Exception e2) {
				System.out.println(e2);
			}
		}
	}
}
