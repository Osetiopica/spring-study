package com.ict.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.vo.BVO;
import com.ict.vo.CVO;

@Repository("myDAOImpl")
public class MyDAOImpl implements MyDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<BVO> getList(int begin, int end) throws Exception {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		return sqlSessionTemplate.selectList("bbs.list", map);
	}

	@Override
	public BVO getDetail(String id) throws Exception {
		return sqlSessionTemplate.selectOne("detail", id);
	}

	@Override
	public int getInsert(BVO bvo) throws Exception {
		return sqlSessionTemplate.insert("insert", bvo);
	}

	@Override
	public int getUpdate(BVO bvo) throws Exception {
		return sqlSessionTemplate.update("update", bvo);
	}

	@Override
	public int getReply_delete_all(String b_idx) throws Exception {
		return sqlSessionTemplate.delete("reply_delete_all", b_idx);
	}

	@Override
	public int getDelete(String b_idx) throws Exception {
		return sqlSessionTemplate.delete("delete", b_idx);
	}

	@Override
	public int getHitUp(String b_idx) throws Exception {
		return sqlSessionTemplate.update("hitup", b_idx);
	}

	@Override
	public List<CVO> getClist(String b_idx) throws Exception {
		return sqlSessionTemplate.selectList("c_list", b_idx);
	}

	@Override
	public int getReply_write(CVO cvo) throws Exception {
		return sqlSessionTemplate.insert("reply_write", cvo);
	}

	@Override
	public int getReply_delete(String c_idx) throws Exception {
		return sqlSessionTemplate.delete("reply_delete", c_idx);
	}

	@Override
	public int getCount() {
		return sqlSessionTemplate.selectOne("count");
	}
	
}
