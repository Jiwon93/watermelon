package com.lifemanlab.shop.modules.item;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ItemServiceImpl implements ItemService {
	
	@Autowired
	ItemDao dao;

	@Override
	public List<Item> selectList(ItemVo vo) throws Exception {
		List<Item> list = dao.selectList(vo);
		return list;
	}

	@Override
	public int selectOneCount(ItemVo vo) throws Exception {
		int count = dao.selectOneCount(vo);
		return count;
	}

	@Override
	public Item selectOne(ItemVo vo) throws Exception {
		Item item = dao.selectOne(vo);
		System.out.println("service item: " + item);
		return item;
	}

	@Override
	public int productReg(Item dto) throws Exception {
		return dao.productReg(dto);
	}
	
}
