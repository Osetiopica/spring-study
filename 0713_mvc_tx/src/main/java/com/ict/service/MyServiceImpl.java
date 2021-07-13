package com.ict.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.dao.MyDAO;
import com.ict.vo.CVO;
import com.ict.vo.TVO;
import com.ict.vo.VO;

@Service("myServiceImpl")
public class MyServiceImpl implements MyService {

	@Autowired
	private MyDAO myDAO;

	@Override
	public int insertCT(VO vo) throws Exception { // 오류 생기면 모두 롤백해야 함
		myDAO.insertCard(vo);
		myDAO.insertTicket(vo);
		return 1;
	}
	
	@Override
	public int insertCT2(CVO cvo, TVO tvo) throws Exception { // 오류 생기면 모두 롤백해야 함
		myDAO.insertCard(cvo);
		myDAO.insertTicket(tvo);
		return 1;
	}

}
