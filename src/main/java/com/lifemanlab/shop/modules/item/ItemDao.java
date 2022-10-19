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
	
}
