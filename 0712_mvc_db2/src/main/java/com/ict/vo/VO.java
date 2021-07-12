package com.ict.vo;

import org.springframework.web.multipart.MultipartFile;

public class VO {
	private String id, name, pw, title, email, fname, text, reg;
	private MultipartFile fname2;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getFname() {
		return fname;
	}
	
	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}
	
	public String getReg() {
		return reg;
	}
	
	public void setReg(String reg) {
		this.reg = reg;
	}

	public MultipartFile getFname2() {
		return fname2;
	}

	public void setFname2(MultipartFile fname2) {
		this.fname2 = fname2;
	}

}
