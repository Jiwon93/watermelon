package com.lifemanlab.shop.modules.review;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.lifemanlab.shop.modules.review.ReviewMapper";
	
	public List<Review> selectList(ReviewVo vo){
		List<Review> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
	
	public int selectOneCount(ReviewVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public Review selectOne(ReviewVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
}
