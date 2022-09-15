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
	
	public int selectOneCount(CodeGroupVo vo) {
		int count = sqlSession.selectOne(namespace + ".selectOneCount", vo);
		System.out.println("dao count: " + count);
		return count;
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
	
	public int update(CodeGroup dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(CodeGroup dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(CodeGroupVo vo) { return sqlSession.delete(namespace + ".delete", vo); }
}
