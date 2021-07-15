package com.ict.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.dao.MyDAO;
import com.ict.vo.BVO;
import com.ict.vo.CVO;

@Service("myServiceImpl")
public class MyServiceImpl implements MyService {

	@Autowired
	private MyDAO myDAO;

	@Override
	public List<BVO> getList(int begin, int end) throws Exception {
		return myDAO.getList(begin, end);
	}

	@Override
	public BVO getDetail(String id) throws Exception {
		return myDAO.getDetail(id);
	}

	@Override
	public int getInsert(BVO bvo) throws Exception {
		return myDAO.getInsert(bvo);
	}

	@Override
	public int getUpdate(BVO bvo) throws Exception {
		return myDAO.getUpdate(bvo);
	}

	@Override
	public int getReply_delete_all(String b_idx) throws Exception {
		return myDAO.getReply_delete_all(b_idx);
	}

	@Override
	public int getDelete(String b_idx) throws Exception {
		return myDAO.getDelete(b_idx);
	}

	@Override
	public int getHitUp(String b_idx) throws Exception {
		return myDAO.getHitUp(b_idx);
	}

	@Override
	public List<CVO> getClist(String b_idx) throws Exception {
		return myDAO.getClist(b_idx);
	}

	@Override
	public int getReply_write(CVO cvo) throws Exception {
		return myDAO.getReply_write(cvo);
	}

	@Override
	public int getReply_delete(String c_idx) throws Exception {
		return myDAO.getReply_delete(c_idx);
	}

	@Override
	public int getCount() throws Exception {
		return myDAO.getCount();
	}

}
