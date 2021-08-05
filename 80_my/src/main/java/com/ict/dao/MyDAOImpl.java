package com.ict.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.vo.CVO;
import com.ict.vo.MVO;
import com.ict.vo.SVO;
import com.ict.vo.VO;

@Repository
public class MyDAOImpl implements MyDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<VO> selectList(String category) throws Exception {
		return sqlSessionTemplate.selectList("my.list", category);
	}
	
	@Override
	public VO selectOne(String idx) throws Exception {
		return sqlSessionTemplate.selectOne("my.detail", idx);
	}

	@Override
	public int insertShopping(SVO svo) throws Exception {
		return sqlSessionTemplate.insert("my.shopping", svo);
	}

	@Override
	public int insertJoin(MVO mvo) throws Exception {
		return sqlSessionTemplate.insert("my.join", mvo);
	}
	
	@Override
	public MVO selectLogin(MVO mvo) throws Exception {
		return sqlSessionTemplate.selectOne("my.login", mvo);
	}

	@Override
	public MVO selectMypage(MVO mvo) throws Exception {
		return sqlSessionTemplate.selectOne("my.mypage", mvo);
	}

	@Override
	public List<VO> selectShoppingList(String m_idx) throws Exception {
		return sqlSessionTemplate.selectList("my.shoppingList", m_idx);
	}
	
	@Override
	public List<VO> selectCartList(String m_idx) throws Exception {
		return sqlSessionTemplate.selectList("my.cartList", m_idx);
	}
	
	@Override
	public int selectMembersCount() throws Exception {
		return sqlSessionTemplate.selectOne("my.membersCount");
	}

	@Override
	public List<MVO> selectMembersList(MVO mvo) throws Exception {
		return sqlSessionTemplate.selectList("my.membersList", mvo);
	}
	
	@Override
	public List<VO> selectProductsList() throws Exception {
		return sqlSessionTemplate.selectList("my.productsList");
	}
	
	@Override
	public List<VO> selectHistoryList() throws Exception {
		return sqlSessionTemplate.selectList("my.historyList");
	}
	
	@Override
	public VO selectHistoryDetail(String idx) throws Exception {
		return sqlSessionTemplate.selectOne("my.historyDetail", idx);
	}
	
	

	@Override
	public int insertAddCart(CVO cvo) throws Exception {
		return sqlSessionTemplate.insert("shop.addCart", cvo);
	}

	@Override
	public int updatePlusCart(String idx) throws Exception {
		return sqlSessionTemplate.update("shop.plusCart", idx);
	}

	@Override
	public int updateEditCart(Map<String, Integer> map) throws Exception {
		return sqlSessionTemplate.update("shop.editCart", map);
	}

	@Override
	public int deleteCart(CVO cvo) throws Exception {
		return sqlSessionTemplate.delete("shop.deleteCart", cvo);
	}

	@Override
	public int insertProduct(VO vo) throws Exception {
		return sqlSessionTemplate.insert("shop.addProduct", vo);
	}
	
}
