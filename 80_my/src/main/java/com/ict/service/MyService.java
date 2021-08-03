package com.ict.service;

import java.util.List;
import java.util.Map;

import com.ict.vo.CVO;
import com.ict.vo.MVO;
import com.ict.vo.SVO;
import com.ict.vo.VO;

//서비스 : DAO가 DB에서 가져온 것을 가공 + 일처리를 묶어서 한번에 처리하는 것이 트랜잭션
public interface MyService {
	
	List<VO> selectList(String category) throws Exception;
	VO selectOne(String idx) throws Exception;
	int insertShopping(SVO svo) throws Exception;
	int insertJoin(MVO mvo) throws Exception;
	MVO selectLogin(MVO mvo) throws Exception;
	MVO selectMypage(MVO mvo) throws Exception;
	List<VO> selectShoppingList(String m_idx) throws Exception;
	List<VO> selectCartList(String m_idx) throws Exception;
	int selectMembersCount() throws Exception;
	List<MVO> selectMembersList(MVO mvo) throws Exception;
	
	int insertAddCart(CVO cvo) throws Exception;
	int updatePlusCart(String idx) throws Exception;
	int updateEditCart(Map<String, Integer> map) throws Exception;
	int deleteCart(CVO cvo) throws Exception;
	int insertProduct(VO vo) throws Exception;
}
