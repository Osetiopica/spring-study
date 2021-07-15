package com.ict.service;

import java.util.List;

import com.ict.vo.VO;

//서비스 : DAO가 DB에서 가져온 것을 가공 + 트랜잭션
public interface MyService {

	List<VO> getList() throws Exception;

	int getInsert(VO vo) throws Exception;

	VO getDetail(String id) throws Exception;

	int getUpdate(VO vo) throws Exception;

	int getDelete(String id) throws Exception;

}
