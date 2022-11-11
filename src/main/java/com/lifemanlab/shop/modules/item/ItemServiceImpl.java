package com.lifemanlab.shop.modules.item;


import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.lifemanlab.shop.common.constants.Constants;
import com.lifemanlab.shop.common.util.UtilDatetime;
import com.lifemanlab.shop.common.util.UtilRegMod;

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
		dao.productReg(dto);
		dao.productOptionReg(dto);
		return 1;
	}


	@Override
	public List<Item> selectListUploaded(ItemVo vo) throws Exception {
		return dao.selectListUploaded(vo);
	}

	@Override
	public void setRegMod(Item dto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void uploadFiles(MultipartFile[] multipartFiles, Item dto, String tableName, int type, int maxNumber)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteFiles(String[] deleteSeq, String[] deletePathFile, Item dto, String tableName) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void ueleteFiles(String[] deleteSeq, String[] deletePathFile, Item dto, String tableName) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
}
