package com.lifemanlab.shop.modules.item;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface ItemService {
	
	public List<Item> selectList(ItemVo vo) throws Exception;
	
	public int selectOneCount(ItemVo vo) throws Exception;
	public Item selectOne(ItemVo vo) throws Exception;
	
	//상품등록
	public int productReg(Item dto) throws Exception;

	//업로드
	public void setRegMod(Item dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, Item dto, String tableName, int type, int maxNumber) throws Exception;
	public void deleteFiles(String[] deleteSeq, String[] deletePathFile, Item dto, String tableName) throws Exception;
	public void ueleteFiles(String[] deleteSeq, String[] deletePathFile, Item dto, String tableName) throws Exception;
	List<Item> selectListUploaded(ItemVo vo) throws Exception; 
}
