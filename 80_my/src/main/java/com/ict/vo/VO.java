package com.ict.vo;

import org.springframework.web.multipart.MultipartFile;

public class VO {
	
	private String idx, category, p_num, p_name, p_company, p_image_1st, p_image_2nd, p_image_3rd, p_image_4th, p_content, p_date;
	private int p_price;
	private MultipartFile p_image_1st_mf, p_image_2nd_mf, p_image_3rd_mf, p_image_4th_mf;

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
	
}
