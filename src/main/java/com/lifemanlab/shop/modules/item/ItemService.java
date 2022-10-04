package com.lifemanlab.shop.modules.item;

import java.util.List;

public interface ItemService {
	
	public List<Item> selectList(ItemVo vo) throws Exception;
	
	public int selectOneCount(ItemVo vo) throws Exception;
	public Item selectOne(ItemVo vo) throws Exception;

}
