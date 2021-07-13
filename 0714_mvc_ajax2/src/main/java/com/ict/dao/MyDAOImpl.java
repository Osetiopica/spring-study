package com.ict.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.vo.VO;

@Repository("myDAOImpl")
public class MyDAOImpl implements MyDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<VO> selectAll() throws Exception {
		return sqlSessionTemplate.selectList("members.list");
	}

	@Override
	public VO selectIDchk(String id) throws Exception {
		return sqlSessionTemplate.selectOne("members.idchk", id);
	}

	@Override
	public int insertMembers(VO vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMembers(String idx) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
