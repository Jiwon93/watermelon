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
	
	private static String namespace = "com.junefw.infra.modules.item.ItemMapper";
	
	public List<Item> selectList(){ return sqlSession.selectList(namespace + ".selectList", ""); }
}
