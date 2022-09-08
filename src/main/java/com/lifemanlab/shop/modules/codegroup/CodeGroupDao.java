package com.lifemanlab.shop.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.lifemanlab.shop.modules.codegroup.CodeGroupMapper";
	
	//public List<CodeGroup> selectList(CodeGroupVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	
	public List<CodeGroup> selectList(CodeGroupVo vo){ 
		//List<CodeGroup> list = sqlSession.selectList(namespace + ".selectList", vo);
		List<CodeGroup> list = sqlSession.selectList("com.lifemanlab.shop.modules.codegroup.CodeGroupMapper.selectList", vo);
		return list; 
	}
	
	public CodeGroup selectOne(CodeGroupVo vo) {
		CodeGroup item = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao item: " + item);
		return item;
	}
	
	public int insert(CodeGroup dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
}
