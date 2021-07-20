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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ict.service.MyService;
import com.ict.vo.CVO;
import com.ict.vo.MVO;
import com.ict.vo.VO;

@Controller
public class MyController {
	@Autowired
	private MyService myService;

	@RequestMapping("list.do")
	public ModelAndView listCommand(HttpServletRequest request) {
		try {
			ModelAndView mv = new ModelAndView("product_list");
			String category = request.getParameter("category");
			if (category == null || category == "") {
				category = "ele002";
			}
			List<VO> list = myService.selectList(category);
			mv.addObject("list", list);
			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}

	@RequestMapping("onelist.do")
	public ModelAndView onelistCommand(@RequestParam("idx") String idx) {
		try {
			ModelAndView mv = new ModelAndView("product_content");
			VO vo = myService.selectOne(idx);
			mv.addObject("vo", vo);

			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}

	@RequestMapping("login.do")
	public ModelAndView loginCommand() {
		return new ModelAndView("login");
	}

	@RequestMapping("login_ok.do")
	public ModelAndView loginOkCommand(MVO mvo, HttpServletRequest request) {
		try {
			ModelAndView mv = new ModelAndView("redirect:list.do");
			MVO result = myService.selectLogin(mvo);
			String name = result.getName();
			if(name != "") {
				request.getSession().setAttribute("login", name);
				return mv;
			}else {
				return new ModelAndView("redirect:login.do");
			}
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
	
	@RequestMapping("logout.do")
	public ModelAndView loginoutCommand(HttpServletRequest request) {
		try {
			ModelAndView mv = new ModelAndView("redirect:list.do");
			request.getSession().setAttribute("login", "");
			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}

	/*
	 * @RequestMapping(value = "down.do", method = RequestMethod.GET) public void
	 * getFileDown(HttpServletRequest request, HttpServletResponse response) {
	 * FileInputStream fis = null; BufferedInputStream bis = null;
	 * BufferedOutputStream bos = null; try { String file_name =
	 * request.getParameter("file_name"); String path =
	 * request.getSession().getServletContext().getRealPath("resources/upload/" +
	 * file_name); response.setContentType("application/x-msdownload");
	 * response.setHeader("Content-Disposition", "attachment; filename=" +
	 * URLEncoder.encode(file_name, "utf-8")); File file = new File(new
	 * String(path.getBytes("utf-8"))); int b; fis = new FileInputStream(file); bis
	 * = new BufferedInputStream(fis); bos = new
	 * BufferedOutputStream(response.getOutputStream()); while ((b = bis.read()) !=
	 * -1) { bos.write(b); } bos.flush(); } catch (Exception e) {
	 * System.out.println(e); } finally { try { bos.close(); bis.close();
	 * fis.close(); } catch (Exception e2) { System.out.println(e2); } } }
	 * 
	 * @RequestMapping("write.do") public ModelAndView
	 * writeCommand(@ModelAttribute("cPage") String cPage) { return new
	 * ModelAndView("write"); }
	 * 
	 * @RequestMapping(value = "write_ok.do", method = RequestMethod.GET) public
	 * ModelAndView writeOkCommand() { return new ModelAndView("redirect:write.do");
	 * }
	 * 
	 * @RequestMapping(value = "write_ok.do", method = RequestMethod.POST) public
	 * ModelAndView writeOkCommand(HttpServletRequest request, BVO bvo) { try {
	 * String path =
	 * request.getSession().getServletContext().getRealPath("resources/upload");
	 * String file_name2 = bvo.getFile_name2().getOriginalFilename(); if (file_name2
	 * != "") { byte[] in = bvo.getFile_name2().getBytes(); File out = new
	 * File(path, file_name2); FileCopyUtils.copy(in, out); }
	 * bvo.setFile_name(file_name2); bvo.setHit("0"); myService.getInsert(bvo);
	 * return new ModelAndView("redirect:list.do?cPage=1"); } catch (Exception e) {
	 * System.out.println(e); return new ModelAndView("error"); } }
	 * 
	 * @RequestMapping("update.do") public ModelAndView
	 * updateCommand(@ModelAttribute("cPage") String cPage, @RequestParam("b_idx")
	 * String b_idx) { try { ModelAndView mv = new ModelAndView("update");
	 * 
	 * BVO bvo = myService.getDetail(b_idx); mv.addObject("bvo", bvo);
	 * 
	 * return mv; } catch (Exception e) { System.out.println(e); return new
	 * ModelAndView("error"); } }
	 * 
	 * @RequestMapping(value = "update_ok.do", method = RequestMethod.GET) public
	 * ModelAndView updateOkCommand() { return new
	 * ModelAndView("redirect:update.do"); }
	 * 
	 * @RequestMapping(value = "update_ok.do", method = RequestMethod.POST) public
	 * ModelAndView updateOkCommand(HttpServletRequest request, BVO
	 * bvo, @ModelAttribute("cPage") String cPage) { try { String path =
	 * request.getSession().getServletContext().getRealPath("resources/upload");
	 * String file_name2 = bvo.getFile_name2().getOriginalFilename(); if (file_name2
	 * != "") { byte[] in = bvo.getFile_name2().getBytes(); File out = new
	 * File(path, file_name2); FileCopyUtils.copy(in, out);
	 * bvo.setFile_name(file_name2); } else {
	 * bvo.setFile_name(request.getParameter("old_file_name")); }
	 * myService.getUpdate(bvo); return new
	 * ModelAndView("redirect:onelist.do?b_idx="+bvo.getB_idx()+"&cPage="+cPage); }
	 * catch (Exception e) { System.out.println(e); return new
	 * ModelAndView("error"); } }
	 * 
	 * @RequestMapping("delete.do") public ModelAndView
	 * deleteCommand(@ModelAttribute("cPage") String cPage, @RequestParam("b_idx")
	 * String b_idx) { try { ModelAndView mv = new ModelAndView("delete");
	 * 
	 * BVO bvo = myService.getDetail(b_idx); mv.addObject("bvo", bvo);
	 * 
	 * return mv; } catch (Exception e) { System.out.println(e); return new
	 * ModelAndView("error"); } }
	 * 
	 * @RequestMapping(value = "delete_ok.do", method = RequestMethod.POST) public
	 * ModelAndView deleteOkCommand(@ModelAttribute("cPage") String
	 * cPage, @RequestParam("b_idx") String b_idx) { try {
	 * myService.getReply_delete_all(b_idx); myService.getDelete(b_idx); return new
	 * ModelAndView("redirect:list.do"); } catch (Exception e) {
	 * System.out.println(e); return new ModelAndView("error"); } }
	 * 
	 * @RequestMapping(value = "reply_list.do", produces =
	 * "application/json; charset=utf-8")
	 * 
	 * @ResponseBody public List<CVO> replyListCommand(@RequestParam("b_idx") String
	 * b_idx) { try { return myService.getClist(b_idx); } catch (Exception e) {
	 * System.out.println(e); } return null; }
	 * 
	 * @RequestMapping(value = "reply_write.do", produces =
	 * "application/json; charset=utf-8")
	 * 
	 * @ResponseBody public int replyWriteCommand(CVO cvo) { try { return
	 * myService.getReply_write(cvo); } catch (Exception e) { System.out.println(e);
	 * } return 0; }
	 * 
	 * @RequestMapping(value = "reply_delete.do", produces =
	 * "application/json; charset=utf-8")
	 * 
	 * @ResponseBody public int replyDeleteCommand(@RequestParam("c_idx") String
	 * c_idx) { try { return myService.getReply_delete(c_idx); } catch (Exception e)
	 * { System.out.println(e); } return 0; }
	 */
}
