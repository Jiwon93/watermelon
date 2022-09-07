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
	
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}

}
