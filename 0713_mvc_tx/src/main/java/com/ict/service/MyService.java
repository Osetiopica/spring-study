package com.ict.service;

import com.ict.vo.CVO;
import com.ict.vo.TVO;
import com.ict.vo.VO;

//서비스 : DAO가 DB에서 가져온 것을 가공 + 일처리를 묶어서 한번에 처리하는 것이 트랜잭션
public interface MyService {

	int insertCT(VO vo) throws Exception;

	int insertCT2(CVO cvo, TVO tvo) throws Exception;
	
}
