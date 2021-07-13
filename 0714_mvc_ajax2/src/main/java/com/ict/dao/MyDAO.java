package com.ict.dao;

import java.util.List;

import com.ict.vo.VO;

public interface MyDAO {
	
	List<VO> selectAll() throws Exception;
	
	VO selectIDchk(String id) throws Exception;

	int insertMembers(VO vo) throws Exception;

	int deleteMembers(String idx) throws Exception;
	
}
