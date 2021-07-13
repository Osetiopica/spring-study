package com.ict.service;

import java.util.List;

import com.ict.vo.VO;

//서비스 : DAO가 DB에서 가져온 것을 가공 + 일처리를 묶어서 한번에 처리하는 것이 트랜잭션
public interface MyService {

	List<VO> selectAll() throws Exception;
	
	VO selectIDchk(String id) throws Exception;

	int insertMembers(VO vo) throws Exception;

	int deleteMembers(String idx) throws Exception;
	
}
