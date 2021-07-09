package com.ict.vo;

import org.springframework.web.multipart.MultipartFile;

public class VO {
	private String name, f_name; // DB에 저장할 이름
	private MultipartFile file_name; // upload 시 jsp에서 오는 걸 vo로 받을 때 사용할 이름

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public MultipartFile getFile_name() {
		return file_name;
	}

	public void setFile_name(MultipartFile file_name) {
		this.file_name = file_name;
	}

}
