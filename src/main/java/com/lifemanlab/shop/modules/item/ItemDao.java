package com.lifemanlab.shop.modules.item;


import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ItemDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.lifemanlab.shop.modules.item.ItemMapper";
	
	public List<Item> selectList(ItemVo vo) {
		List<Item> list = sqlSession.selectList("com.lifemanlab.shop.modules.item.ItemMapper.selectList", vo);
		return list;
	}
	
	public int selectOneCount(ItemVo vo) {
		int count = sqlSession.selectOne(namespace + ".selectOneCount", vo);
		return count;
	}
	
	public Item selectOne(ItemVo vo) {
		Item item = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao item: " + item);
		return item;
	}
	
	//상품등록
	public int productReg(Item dto) {
		return sqlSession.insert(namespace + ".productReg", dto);
	}
	
	public int productOptionReg(Item dto) {
		return sqlSession.insert(namespace + ".productOptionReg", dto);
	}
	
//	uploaded
	public int insertUploaded(Item dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	public int ueleteUploaded(Item dto) { return sqlSession.insert("Base" + ".ueleteUploaded", dto); }
	public int deleteUploaded(Item dto) { return sqlSession.insert("Base" + ".deleteUploaded", dto); }
	
	public List<Item> selectListUploaded(ItemVo vo){ return sqlSession.selectList(namespace + ".selectListUploaded", vo); }
}
