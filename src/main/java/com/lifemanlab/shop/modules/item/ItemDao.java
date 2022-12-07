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
	public List<Item> ccNameList() { return sqlSession.selectList(namespace + ".ccNameList", ""); }
	public int selectOneCount(ItemVo vo) {
		int count = sqlSession.selectOne(namespace + ".selectOneCount", vo);
		return count;
	}
	
	public Item selectOne(ItemVo vo) {
		Item item = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao item: " + item);
		return item;
	}
	
	//상품리스트
	public List<Item> productList(ItemVo vo) { List<Item> list = sqlSession.selectList(namespace + ".productList", vo); return list; }
	
	
	//상품등록
	public int productReg(Item dto) {
		return sqlSession.insert(namespace + ".productReg", dto);
	}
	
	public int productOptionReg(Item dto) {
		return sqlSession.insert(namespace + ".productOptionReg", dto);
	}
	
	public int update(Item dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Item dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(ItemVo vo) { return sqlSession.delete(namespace + ".delete", vo); }
	
	
	//구매목록
	public List<Item> selectPurchaseHistory(ItemVo vo) { return sqlSession.selectList(namespace + ".selectPurchaseHistory", vo); }
		
	//판매등록상품
	public List<Item> selectSaleManage(ItemVo vo) { return sqlSession.selectList(namespace + ".selectSaleManage", vo); }
	
//	uploaded
	public int insertUploaded(Item dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	public int ueleteUploaded(Item dto) { return sqlSession.insert("Base" + ".ueleteUploaded", dto); }
	public int deleteUploaded(Item dto) { return sqlSession.insert("Base" + ".deleteUploaded", dto); }
	
	public List<Item> selectListUploaded(ItemVo vo){ return sqlSession.selectList(namespace + ".selectListUploaded", vo); }

	//조회수
	
	//좋아요
	public int insertLike(Item dto) { return sqlSession.insert(namespace + ".insertLike", dto); }
	public int deleteLike(ItemVo vo) { return sqlSession.delete(namespace + ".deleteLike", vo); }
}
