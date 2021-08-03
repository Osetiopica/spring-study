package com.ict.vo;

import org.springframework.web.multipart.MultipartFile;

public class VO {
	
	private String idx, category, p_num, p_name, p_company, p_image_1st, p_image_2nd, p_image_3rd, p_image_4th, p_content, p_date;
	private int p_price,s_price;
	private MultipartFile p_image_1st_mf, p_image_2nd_mf, p_image_3rd_mf, p_image_4th_mf;
	private String p_idx, s_date, s_ver, s_size, s_color, m_idx, s_memo, s_pay, s_delivery, c_date;

	// 별도 추가 (장바구니내용 => 원래는 DB에 구현 )
	private int quant, totalPrice ;
	
	// 장바구니에서 수량이 변경되면 장바구니 총 금액도 변경되어야 한다.
	public void setQuant(int quant) {
		this.quant = quant;
		// 주의) 나중에 할인제품과 아니 제품을 구별해서 계산 해야 된다.
		setTotalPrice(quant * p_price);
	}

	
	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getP_num() {
		return p_num;
	}

	public void setP_num(String p_num) {
		this.p_num = p_num;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_company() {
		return p_company;
	}

	public void setP_company(String p_company) {
		this.p_company = p_company;
	}

	public String getP_image_1st() {
		return p_image_1st;
	}

	public void setP_image_1st(String p_image_1st) {
		this.p_image_1st = p_image_1st;
	}

	public String getP_image_2nd() {
		return p_image_2nd;
	}

	public void setP_image_2nd(String p_image_2nd) {
		this.p_image_2nd = p_image_2nd;
	}

	public String getP_image_3rd() {
		return p_image_3rd;
	}

	public void setP_image_3rd(String p_image_3rd) {
		this.p_image_3rd = p_image_3rd;
	}

	public String getP_image_4th() {
		return p_image_4th;
	}

	public void setP_image_4th(String p_image_4th) {
		this.p_image_4th = p_image_4th;
	}

	public MultipartFile getP_image_1st_mf() {
		return p_image_1st_mf;
	}

	public void setP_image_1st_mf(MultipartFile p_image_1st_mf) {
		this.p_image_1st_mf = p_image_1st_mf;
	}

	public MultipartFile getP_image_2nd_mf() {
		return p_image_2nd_mf;
	}

	public void setP_image_2nd_mf(MultipartFile p_image_2nd_mf) {
		this.p_image_2nd_mf = p_image_2nd_mf;
	}

	public MultipartFile getP_image_3rd_mf() {
		return p_image_3rd_mf;
	}

	public void setP_image_3rd_mf(MultipartFile p_image_3rd_mf) {
		this.p_image_3rd_mf = p_image_3rd_mf;
	}

	public MultipartFile getP_image_4th_mf() {
		return p_image_4th_mf;
	}

	public void setP_image_4th_mf(MultipartFile p_image_4th_mf) {
		this.p_image_4th_mf = p_image_4th_mf;
	}

	public String getP_content() {
		return p_content;
	}

	public void setP_content(String p_content) {
		this.p_content = p_content;
	}

	public String getP_date() {
		return p_date;
	}

	public void setP_date(String p_date) {
		this.p_date = p_date;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public int getQuant() {
		return quant;
	}


	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}


	public String getP_idx() {
		return p_idx;
	}


	public void setP_idx(String p_idx) {
		this.p_idx = p_idx;
	}


	public String getS_date() {
		return s_date;
	}


	public void setS_date(String s_date) {
		this.s_date = s_date;
	}


	public String getS_ver() {
		return s_ver;
	}


	public void setS_ver(String s_ver) {
		this.s_ver = s_ver;
	}


	public String getS_size() {
		return s_size;
	}


	public void setS_size(String s_size) {
		this.s_size = s_size;
	}


	public String getS_color() {
		return s_color;
	}


	public void setS_color(String s_color) {
		this.s_color = s_color;
	}


	public String getM_idx() {
		return m_idx;
	}


	public void setM_idx(String m_idx) {
		this.m_idx = m_idx;
	}


	public String getS_memo() {
		return s_memo;
	}


	public void setS_memo(String s_memo) {
		this.s_memo = s_memo;
	}


	public String getS_pay() {
		return s_pay;
	}


	public void setS_pay(String s_pay) {
		this.s_pay = s_pay;
	}


	public String getS_delivery() {
		return s_delivery;
	}


	public void setS_delivery(String s_delivery) {
		this.s_delivery = s_delivery;
	}


	public int getS_price() {
		return s_price;
	}


	public void setS_price(int s_price) {
		this.s_price = s_price;
	}


	public String getC_date() {
		return c_date;
	}


	public void setC_date(String c_date) {
		this.c_date = c_date;
	}
	
}
