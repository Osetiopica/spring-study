package com.ict.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ict.service.MyService;
import com.ict.vo.CVO;
import com.ict.vo.MVO;
import com.ict.vo.SVO;
import com.ict.vo.VO;

@Controller
public class MyController {
	@Autowired
	private MyService myService;
	
	@RequestMapping("main.do")
	public ModelAndView listCommand(HttpServletRequest request) {
		try {
			ModelAndView mv = new ModelAndView("main");
			String category = request.getParameter("category");
			if (category == null || category == "") {
				category = "best";
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
			ModelAndView mv = new ModelAndView("product_detail");
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
	
	@RequestMapping("payment.do")
	public ModelAndView paymentCommand(@ModelAttribute("svo") SVO svo, HttpServletRequest request) {
		try {
			if((String) request.getSession().getAttribute("login") == null) {
				return new ModelAndView("redirect:login.do");
			}
			ModelAndView mv = new ModelAndView("payment");
			
			VO vo = myService.selectOne(svo.getP_idx());
			
			MVO mvo = new MVO();
			mvo.setIdx((String) request.getSession().getAttribute("login"));
			mvo = myService.selectMypage(mvo);
			
			mv.addObject("mvo", mvo);
			mv.addObject("vo", vo);
			
			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
	
	@RequestMapping("paymentOk.do")
	public ModelAndView paymentOkCommand(SVO svo, HttpServletRequest request) {
		try {
			if((String) request.getSession().getAttribute("login") == null) {
				return new ModelAndView("redirect:login.do");
			}
			ModelAndView mv = new ModelAndView("payment_success");
			
			svo.setM_idx((String) request.getSession().getAttribute("login"));
			svo.setP_idx((String) request.getParameter("p_idx"));
			svo.setS_pay(request.getParameter("s_pay"));
			svo.setS_delivery("상품주문");
			myService.insertShopping(svo);
			
			VO vo = myService.selectOne(svo.getP_idx());
			
			mv.addObject("vo", vo);
			mv.addObject("svo", svo);
			
			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
	
	@RequestMapping("join_terms.do")
	public ModelAndView joinTermsCommand() {
		return new ModelAndView("join_terms");
	}
	
	@RequestMapping("join.do")
	public ModelAndView joinCommand() {
		return new ModelAndView("join");
	}
	
	@RequestMapping("join_ok.do")
	public ModelAndView joinOkCommand(MVO mvo) {
		try {
		myService.insertJoin(mvo);
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return new ModelAndView("redirect:main.do");
	}
	
	@RequestMapping("login.do")
	public ModelAndView loginCommand() {
		return new ModelAndView("login");
	}

	@RequestMapping("login_ok.do")
	public ModelAndView loginOkCommand(MVO mvo, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("redirect:main.do");
		try {
			MVO result = myService.selectLogin(mvo);
			String name = result.getName();
			if (name != "") {
				request.getSession().setAttribute("login", result.getIdx());
				request.getSession().setAttribute("name", name);
				if((result.getId()).equalsIgnoreCase("admin")) {
					return new ModelAndView("redirect:admin_main.do");
				}
				return mv;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return new ModelAndView("redirect:login.do");
	}
	
	@RequestMapping("logout.do")
	public ModelAndView loginoutCommand(HttpServletRequest request) {
		try {
			ModelAndView mv = new ModelAndView("redirect:main.do");
			request.getSession().invalidate();
			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
	
	@RequestMapping("mypage.do")
	public ModelAndView mypageCommand(HttpServletRequest request) {
		try {
			if((String) request.getSession().getAttribute("login") == null) {
				return new ModelAndView("redirect:login.do");
			}
			ModelAndView mv = new ModelAndView("mypage");
			
			MVO mvo = new MVO();
			mvo.setIdx((String) request.getSession().getAttribute("login"));
			mvo = myService.selectMypage(mvo);
			mv.addObject("mvo", mvo);

			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
	
	@RequestMapping("mypage_update.do")
	public ModelAndView mypageUpdateCommand(HttpServletRequest request) {
		try {
			if((String) request.getSession().getAttribute("login") == null) {
				return new ModelAndView("redirect:login.do");
			}
			ModelAndView mv = new ModelAndView("mypage_update");
			
			MVO mvo = new MVO();
			mvo.setIdx((String) request.getSession().getAttribute("login"));
			mvo = myService.selectMypage(mvo);
			mv.addObject("mvo", mvo);

			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
	
	@RequestMapping("mypage_pwd.do")
	public ModelAndView mypagePwdCommand(HttpServletRequest request) {
		try {
			if((String) request.getSession().getAttribute("login") == null) {
				return new ModelAndView("redirect:login.do");
			}
			ModelAndView mv = new ModelAndView("mypage_password");
			
			MVO mvo = new MVO();
			mvo.setIdx((String) request.getSession().getAttribute("login"));
			mvo = myService.selectMypage(mvo);
			mv.addObject("mvo", mvo);

			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
	
	@RequestMapping("mypage_history.do")
	public ModelAndView mypageHistoryCommand(HttpServletRequest request) {
		try {
			if((String) request.getSession().getAttribute("login") == null) {
				return new ModelAndView("redirect:login.do");
			}
			ModelAndView mv = new ModelAndView("mypage_history");
			
			MVO mvo = new MVO();
			mvo.setIdx((String) request.getSession().getAttribute("login"));
			
			List<VO> list = myService.selectShoppingList(mvo.getIdx());
			mv.addObject("list", list);
			
			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
	
	@RequestMapping("mypage_cart.do")
	public ModelAndView mypageCartCommand(HttpServletRequest request) {
		try {
			if((String) request.getSession().getAttribute("login") == null) {
				return new ModelAndView("redirect:login.do");
			}
			ModelAndView mv = new ModelAndView("mypage_cart");
			
			MVO mvo = new MVO();
			mvo.setIdx((String) request.getSession().getAttribute("login"));
			
			List<VO> list = myService.selectCartList(mvo.getIdx());
			mv.addObject("list", list);
			
			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}

	@RequestMapping("admin_main.do")
	public ModelAndView adminMainCommand(HttpServletRequest request) {
		try {
			if((String) request.getSession().getAttribute("login") == null) {
				return new ModelAndView("redirect:login.do");
			}
			ModelAndView mv = new ModelAndView("admin_main");
			
			MVO mvo = new MVO();
			mvo.setIdx((String) request.getSession().getAttribute("login"));
			mvo = myService.selectMypage(mvo);
			mv.addObject("mvo", mvo);
			
			int count = myService.selectMembersCount();
			mv.addObject("count", count);

			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
	
	@RequestMapping("admin_members_list.do")
	public ModelAndView adminMembersListCommand(HttpServletRequest request) {
		try {
			if((String) request.getSession().getAttribute("login") == null) {
				return new ModelAndView("redirect:login.do");
			}
			ModelAndView mv = new ModelAndView("admin_members_list");
			
			MVO mvo = new MVO();
			mvo.setIdx((String) request.getSession().getAttribute("login"));
			mvo = myService.selectMypage(mvo);
			mv.addObject("mvo", mvo);
			
			List<MVO> list = myService.selectMembersList(mvo);
			mv.addObject("list", list);

			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
	
	@RequestMapping("admin_member_detail.do")
	public ModelAndView adminMemberDetailCommand(HttpServletRequest request) {
		try {
			if((String) request.getSession().getAttribute("login") == null) {
				return new ModelAndView("redirect:login.do");
			}
			ModelAndView mv = new ModelAndView("admin_member_detail");
			
			MVO mvo = new MVO();
			mvo.setIdx(request.getParameter("idx"));
			mvo = myService.selectMypage(mvo);
			mv.addObject("mvo", mvo);

			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
	
	@RequestMapping("admin_products_list.do")
	public ModelAndView adminProductsListCommand(HttpServletRequest request) {
		try {
			if((String) request.getSession().getAttribute("login") == null) {
				return new ModelAndView("redirect:login.do");
			}
			ModelAndView mv = new ModelAndView("admin_products_list");
			
			List<VO> list = myService.selectProductsList();
			mv.addObject("list", list);
			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
	
	@RequestMapping("admin_product_insert.do")
	public ModelAndView adminProductInsertCommand(HttpServletRequest request) {
		try {
			if((String) request.getSession().getAttribute("login") == null) {
				return new ModelAndView("redirect:login.do");
			}
			return new ModelAndView("admin_product_insert");
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
	
	@RequestMapping("admin_product_update.do")
	public ModelAndView adminProductUpdateCommand(HttpServletRequest request) {
		try {
			if((String) request.getSession().getAttribute("login") == null) {
				return new ModelAndView("redirect:login.do");
			}
			ModelAndView mv = new ModelAndView("admin_product_update");
			
			VO vo = new VO();
			vo = myService.selectOne(request.getParameter("idx"));
			mv.addObject("vo", vo);

			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
	
	@RequestMapping("admin_history_list.do")
	public ModelAndView adminHistoryListCommand(HttpServletRequest request) {
		try {
			if((String) request.getSession().getAttribute("login") == null) {
				return new ModelAndView("redirect:login.do");
			}
			ModelAndView mv = new ModelAndView("admin_history_list");
			
			List<VO> list = myService.selectHistoryList();
			mv.addObject("list", list);
			
			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
	
	@RequestMapping("admin_history_detail.do")
	public ModelAndView adminHistoryDetailCommand(HttpServletRequest request) {
		try {
			if((String) request.getSession().getAttribute("login") == null) {
				return new ModelAndView("redirect:login.do");
			}
			ModelAndView mv = new ModelAndView("admin_history_detail");
			
			VO vo = myService.selectHistoryDetail(request.getParameter("idx"));
			mv.addObject("vo", vo);
			
			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
	
	@RequestMapping("admin_other.do")
	public ModelAndView adminOtherCommand(HttpServletRequest request) {
		try {
			if((String) request.getSession().getAttribute("login") == null) {
				return new ModelAndView("redirect:login.do");
			}
			ModelAndView mv = new ModelAndView("admin_other");
						
			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
/*
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
	public ModelAndView loginCommand(HttpServletRequest request) {
		if (request.getSession().getAttribute("login") != "") {
			String test = (String) request.getSession().getAttribute("login");
			if (test.equalsIgnoreCase("admin")) {
				return new ModelAndView("admin");
			} else {
				return new ModelAndView("redirect:list.do");
			}
		}
		return new ModelAndView("login");
	}

	@RequestMapping("login_ok.do")
	public ModelAndView loginOkCommand(MVO mvo, HttpServletRequest request) {
		try {
			ModelAndView mv = new ModelAndView("redirect:list.do");
			MVO result = myService.selectLogin(mvo);
			String name = result.getName();
			if (request.getSession().getAttribute("login") != "") {
				String test = (String) request.getSession().getAttribute("login");
				if (test.equalsIgnoreCase("admin")) {
					return new ModelAndView("admin");
				} else {
					return mv;
				}
			}
			if (name != "") {
				request.getSession().setAttribute("login", result.getIdx());
				request.getSession().setAttribute("name", name);
				String test = result.getId();
				if (test.equalsIgnoreCase("admin")) {
					return new ModelAndView("admin");
				}
				return mv;
			}
		} catch (Exception e) {
		}
		return new ModelAndView("redirect:login.do");
	}

	@RequestMapping("logout.do")
	public ModelAndView loginoutCommand(HttpServletRequest request) {
		try {
			ModelAndView mv = new ModelAndView("redirect:list.do");
			request.getSession().setAttribute("login", "");
			request.getSession().setAttribute("name", "");
			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}

	@RequestMapping("showCart.do")
	public ModelAndView showCartCommand(HttpServletRequest request) {
		try {
			ModelAndView mv = new ModelAndView("cartList");
			String m_idx = (String) request.getSession().getAttribute("login");
			List<VO> list = myService.selectCartList(m_idx);

			int total = 0;

			for (VO vo : list) {
				total += vo.getQuant() * vo.getP_saleprice();
			}

			mv.addObject("list", list);
			mv.addObject("list_leng", list.size());
			mv.addObject("total", total);

			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
*//*
	@RequestMapping("addCart.do")
	public ModelAndView addCartCommand(HttpServletRequest request, @RequestParam("idx") String idx) {
		try {
			ModelAndView mv = new ModelAndView("redirect:showCart.do");
			String m_idx = (String) request.getSession().getAttribute("login");
			List<VO> list = myService.selectCartList(m_idx);
			Iterator<VO> it = list.iterator();

			CVO cvo = new CVO();

			cvo.setM_idx(Integer.parseInt(m_idx));
			cvo.setP_idx(Integer.parseInt(idx));

			VO vo = null;
			while (it.hasNext()) {
				VO vo2 = (VO) it.next();
				if (vo2.getIdx().equalsIgnoreCase(idx)) {
					vo = vo2;
					break;
				}
			}
			if (vo == null) {
				myService.insertAddCart(cvo);
			} else {
				myService.updatePlusCart(idx);
			}

			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
*//*
	@RequestMapping(value = "addCart.do", produces = "application/html; chatset=utf-8;")
	@ResponseBody
	public String addCartCommand(HttpServletRequest request, @RequestParam("idx") String idx) {
		try {
			ModelAndView mv = new ModelAndView("redirect:showCart.do");
			String m_idx = (String) request.getSession().getAttribute("login");
			List<VO> list = myService.selectCartList(m_idx);
			Iterator<VO> it = list.iterator();

			CVO cvo = new CVO();

			cvo.setM_idx(Integer.parseInt(m_idx));
			cvo.setP_idx(Integer.parseInt(idx));

			VO vo = null;
			while (it.hasNext()) {
				VO vo2 = (VO) it.next();
				if (vo2.getIdx().equalsIgnoreCase(idx)) {
					vo = vo2;
					break;
				}
			}
			int result = 0;
			if (vo == null) {
				result = myService.insertAddCart(cvo);
			} else {
				result = myService.updatePlusCart(idx);
			}

			return String.valueOf(result);
		} catch (Exception e) {
			return "0";
		}
	}

	@RequestMapping("editCart.do")
	public ModelAndView editCartCommand(HttpServletRequest request, @RequestParam("idx") String idx) {
		try {
			ModelAndView mv = new ModelAndView("redirect:showCart.do");
			String m_idx = (String) request.getSession().getAttribute("login");
			int su = Integer.parseInt(request.getParameter("su"));

			CVO cvo = new CVO();
			cvo.setM_idx(Integer.parseInt(m_idx));
			cvo.setP_idx(Integer.parseInt(idx));

			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("m_idx", cvo.getM_idx());
			map.put("p_idx", cvo.getP_idx());
			map.put("su", su);

			myService.updateEditCart(map);

			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}

	@RequestMapping("deleteCart.do")
	public ModelAndView deleteCartCommand(HttpServletRequest request, @RequestParam("idx") String idx) {
		try {
			ModelAndView mv = new ModelAndView("redirect:showCart.do");
			String m_idx = (String) request.getSession().getAttribute("login");

			CVO cvo = new CVO();
			cvo.setM_idx(Integer.parseInt(m_idx));

			String[] check = request.getParameterValues("check");

			for (int i = 0; i < check.length; i++) {
				cvo.setP_idx(Integer.parseInt(check[i]));
				myService.deleteCart(cvo);
			}

			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}

	@RequestMapping(value = "addProduct.do", method = RequestMethod.POST)
	public ModelAndView addProductCommand(HttpServletRequest request, VO vo) {
		try {
			ModelAndView mv = new ModelAndView("redirect:list.do?category=" + vo.getCategory());

			String path = request.getSession().getServletContext().getRealPath("resources/images");
			String p_image_s2 = vo.getP_image_s2().getOriginalFilename();
			String p_image_l2 = vo.getP_image_l2().getOriginalFilename();
			
			vo.setP_image_s(p_image_s2);
			vo.setP_image_l(p_image_l2);
			
			int result = myService.insertProduct(vo);
			if (result > 0) {
				byte[] in = vo.getP_image_s2().getBytes();
				File out = new File(path, p_image_s2);
				FileCopyUtils.copy(in, out);
				
				byte[] in2 = vo.getP_image_l2().getBytes();
				File out2 = new File(path, p_image_l2);
				FileCopyUtils.copy(in2, out2);
			} else {
				return new ModelAndView("redirect:login_ok.do");
			}

			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("error");
			System.out.println(e);
			mv.addObject("e", e);
			return mv;
		}
	}
*/
}
