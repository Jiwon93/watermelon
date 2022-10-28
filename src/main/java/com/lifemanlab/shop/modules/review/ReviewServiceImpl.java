package com.lifemanlab.shop.modules.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	ReviewDao dao;

	@Override
	public List<Review> selectList(ReviewVo vo) throws Exception {
		List<Review> list = dao.selectList(vo);
		return list;
	}

	@Override
	public int selectOneCount(ReviewVo vo) throws Exception {
		
		return dao.selectOneCount(vo);
	}

	@Override
	public Review selectOne(ReviewVo vo) throws Exception {
		Review item = dao.selectOne(vo); 
		return item;
	}

}
