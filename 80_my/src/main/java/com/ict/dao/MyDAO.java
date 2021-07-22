package com.ict.dao;

import java.util.List;
import java.util.Map;

import com.ict.vo.CVO;
import com.ict.vo.MVO;
import com.ict.vo.VO;

public interface MyDAO {
	
	List<VO> selectList(String category) throws Exception;
	VO selectOne(String idx) throws Exception;
	MVO selectLogin(MVO mvo) throws Exception;
	List<VO> selectCartList(String m_idx) throws Exception;
	int insertAddCart(CVO cvo) throws Exception;
	int updatePlusCart(String idx) throws Exception;
	int updateEditCart(Map<String, Integer> map) throws Exception;
	int deleteCart(CVO cvo) throws Exception;
	int insertProduct(VO vo) throws Exception;
}
