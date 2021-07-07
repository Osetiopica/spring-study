package com.ict.db;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class DAO {
	private SqlSessionTemplate sqlSessionTemplate;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	public List<VO> getList() {
		List<VO> list = null;
		list = sqlSessionTemplate.selectList("list");
		return list;
	}

	public VO getDetail(String id) {
		VO vo = null;
		vo = sqlSessionTemplate.selectOne("detail", id);
		return vo;
	}

	public int getInsert(VO vo) {
		int result = 0;
		result = sqlSessionTemplate.insert("insert", vo);
		return result;
	}

	public int getUpdate(VO vo) {
		int result = 0;
		result = sqlSessionTemplate.update("update", vo);
		return result;
	}
	
	public int getDelete(String id) {
		int result = 0;
		result = sqlSessionTemplate.delete("delete", id);
		return result;
	}
}
