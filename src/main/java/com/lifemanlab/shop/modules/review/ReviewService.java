package com.lifemanlab.shop.modules.review;

import java.util.List;

public interface ReviewService {

	public List<Review> selectList(ReviewVo vo) throws Exception;
	public int selectOneCount(ReviewVo vo) throws Exception;
	public Review selectOne(ReviewVo vo) throws Exception;
}
