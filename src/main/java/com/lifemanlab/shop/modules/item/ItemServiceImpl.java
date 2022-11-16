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
	public void setRegMod(Item dto) throws Exception {
		HttpServletRequest httpServletRequest = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		
		dto.setRegIp(UtilRegMod.getClientIp(httpServletRequest));
		dto.setRegSeq(UtilRegMod.getSessionSeq(httpServletRequest));
		dto.setRegDeviceCd(UtilRegMod.getDevice());
		dto.setRegDateTime(UtilDatetime.nowDate());
		
		dto.setModIp(UtilRegMod.getClientIp(httpServletRequest));
		dto.setModSeq(UtilRegMod.getSessionSeq(httpServletRequest));
		dto.setModDeviceCd(UtilRegMod.getDevice());
		dto.setModDateTime(UtilDatetime.nowDate());
	}
	
	@Override
	public void uploadFiles(MultipartFile[] multipartFiles, Item dto, String tableName, int type, int maxNumber) throws Exception {
			
		for(int i=0; i<multipartFiles.length; i++) {
	    	
			if(!multipartFiles[i].isEmpty()) {
				
				String className = dto.getClass().getSimpleName().toString().toLowerCase();		
				String fileName = multipartFiles[i].getOriginalFilename();
				String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
				String uuid = UUID.randomUUID().toString();
				String uuidFileName = uuid + "." + ext;
				String pathModule = className;
				String nowString = UtilDatetime.nowString();
				String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
				String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
				String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
				
				File uploadPath = new File(path);
				
				if (!uploadPath.exists()) {
					uploadPath.mkdir();
				} else {
					// by pass
				}
				  
				multipartFiles[i].transferTo(new File(path + uuidFileName));
				
				dto.setPath(pathForView);
				dto.setOriginalName(fileName);
				dto.setUuidName(uuidFileName);
				dto.setExt(ext);
				dto.setSize(multipartFiles[i].getSize());
				
				dto.setTableName(tableName);
				dto.setType(type);
//				dto.setDefaultNy();
				dto.setSort(maxNumber + i);
				dto.setPseq(dto.getItemSeq());

				dao.insertUploaded(dto);
    		}
		}
	}

	@Override
	public void deleteFiles(String[] deleteSeq, String[] deletePathFile, Item dto, String tableName) throws Exception {
		for (int i=0; i<deleteSeq.length; i++) {
			File file = new File(Constants.UPLOAD_PATH_PREFIX_EXTERNAL + deletePathFile[i]);
        
			boolean result = file.delete();
            
            if(result) {
            	dto.setSeq(deleteSeq[i]);
            	dto.setTableName(tableName);
            	dao.deleteUploaded(dto);
            }
		}
	}

	@Override
	public void ueleteFiles(String[] deleteSeq, String[] deletePathFile, Item dto, String tableName) throws Exception {
		for (int i=0; i<deleteSeq.length; i++) {
//			File file = new File(Constants.UPLOAD_PATH_PREFIX_EXTERNAL + deletePathFile[i]);
//			boolean result = file.delete();
			
//			if(result) {
				dto.setSeq(deleteSeq[i]);
				dto.setTableName(tableName);
				dao.ueleteUploaded(dto);
//			}
		}
	}
	
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

	//상품등록
	@Override
	public int productReg(Item dto) throws Exception {
		setRegMod(dto);
		
		dao.productReg(dto);
		
		uploadFiles(dto.getUploadImg(), dto, "itUploaded", dto.getUploadImgType(), dto.getUploadImgMaxNumber());
    	uploadFiles(dto.getUploadFile(), dto, "itUploaded", dto.getUploadFileType(), dto.getUploadFileMaxNumber());
		return 1;
	}
	
	@Override
	public int productOptionReg(Item dto) throws Exception {
		
		dao.productOptionReg(dto);
		return 1;
	}


	@Override
	public List<Item> selectListUploaded(ItemVo vo) throws Exception {
		return dao.selectListUploaded(vo);
	}

	@Override
	public int update(Item dto) throws Exception {
		setRegMod(dto);
		dao.update(dto);
		
		deleteFiles(dto.getUploadImgDeleteSeq(), dto.getUploadImgDeletePathFile(), dto, "itUploaded");
		uploadFiles(dto.getUploadImg(), dto, "itUploaded", dto.getUploadImgType(), dto.getUploadImgMaxNumber());
		
		deleteFiles(dto.getUploadFileDeleteSeq(), dto.getUploadFileDeletePathFile(), dto, "itUploaded");
		uploadFiles(dto.getUploadFile(), dto, "itUploaded", dto.getUploadFileType(), dto.getUploadFileMaxNumber());
		return 1;
	}

	@Override
	public int uelete(Item dto) throws Exception {
		setRegMod(dto);
		return dao.uelete(dto);
	}

	@Override
	public int delete(ItemVo vo) throws Exception {
		return dao.delete(vo);
	}

	

	
	
}
