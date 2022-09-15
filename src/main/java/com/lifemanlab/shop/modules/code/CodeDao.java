package com.lifemanlab.shop.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class CodeDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.lifemanlab.shop.modules.code.CodeMapper";
	
	public List<Code> selectList(CodeVo vo){ 
		List<Code> list = sqlSession.selectList("com.lifemanlab.shop.modules.code.CodeMapper.selectList", vo);
		return list; 
	}

	public List<Code> ccgNameList(){
		List<Code> ccgList = sqlSession.selectList("com.lifemanlab.shop.modules.code.CodeMapper.ccgNameList", "");
		return ccgList;
	}
	
	public int selectOneCount(CodeVo vo) {
		int count = sqlSession.selectOne(namespace + ".selectOneCount", vo);
		System.out.println("dao count: " + count);
		return count;
	}
	
	public Code selectOne(CodeVo vo) {
		Code item = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao item: " + item);
		return item;
	}
	
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int update(Code dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Code dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(CodeVo vo) { return sqlSession.delete(namespace + ".delete", vo); }

}
