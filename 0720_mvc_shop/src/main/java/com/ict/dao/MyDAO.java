package com.ict.dao;

import java.util.List;

import com.ict.vo.CVO;
import com.ict.vo.MVO;
import com.ict.vo.VO;

public interface MyDAO {
	
	List<VO> selectList(String category) throws Exception;
	VO selectOne(String idx) throws Exception;
	MVO selectLogin(MVO mvo) throws Exception;
	/*
	
	int getInsert(BVO bvo) throws Exception;
	
	int getUpdate(BVO bvo) throws Exception;
	
	int getReply_delete_all(String b_idx) throws Exception;
	
	int getDelete(String b_idx) throws Exception;
	
	int getHitUp(String b_idx) throws Exception;
	
	List<CVO> getClist(String b_idx) throws Exception;
	
	int getReply_write(CVO cvo) throws Exception;
	
	int getReply_delete(String c_idx) throws Exception;
	
	int getCount() throws Exception;
	*/
}
