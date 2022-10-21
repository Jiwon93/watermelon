package com.lifemanlab.shop.modules.item;

import java.util.List;

public interface ItemService {
	
	public List<Item> selectList(ItemVo vo) throws Exception;
	
	public int selectOneCount(ItemVo vo) throws Exception;
	public Item selectOne(ItemVo vo) throws Exception;
	
	//상품등록
	public int productReg(Item dto) throws Exception;
	public int productOptionReg(Item dto) throws Exception;

}
