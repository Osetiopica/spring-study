package com.ict.dao;

import java.util.List;

import com.ict.vo.VO;

public interface MyDAO {
	
	List<VO> getList() throws Exception;

	int getInsert(VO vo) throws Exception;

	VO getDetail(String id) throws Exception;

	int getUpdate(VO vo) throws Exception;

	int getDelete(String id) throws Exception;
	
}
