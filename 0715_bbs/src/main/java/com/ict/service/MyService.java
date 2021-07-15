package com.ict.service;

import java.util.List;

import com.ict.vo.BVO;
import com.ict.vo.CVO;

//서비스 : DAO가 DB에서 가져온 것을 가공 + 일처리를 묶어서 한번에 처리하는 것이 트랜잭션
public interface MyService {
	
	List<BVO> getList(int begin, int end) throws Exception;
	
	BVO getDetail(String id) throws Exception;
	
	int getInsert(BVO bvo) throws Exception;
	
	int getUpdate(BVO bvo) throws Exception;
	
	int getReply_delete_all(String b_idx) throws Exception;
	
	int getDelete(String b_idx) throws Exception;
	
	int getHitUp(String b_idx) throws Exception;
	
	List<CVO> getClist(String b_idx) throws Exception;
	
	int getReply_write(CVO cvo) throws Exception;
	
	int getReply_delete(String c_idx) throws Exception;
	
	int getCount() throws Exception;
	
}
