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
	
	//상품 리스트
	@Override
	public List<Item> productList(ItemVo vo) throws Exception {
		List<Item> list = dao.productList(vo);
		return list;
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
		return dao.productOptionReg(dto);
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

	@Override
	public List<Item> ccNameList() throws Exception {
		return dao.ccNameList();
	}

	@Override
	public List<Item> selectPurchaseHistory(ItemVo vo) throws Exception {
		return dao.selectPurchaseHistory(vo);
	}

	@Override
	public List<Item> selectSaleManage(ItemVo vo) throws Exception {
		return dao.selectSaleManage(vo);
	}

	//좋아요
	@Override
	public int insertLike(Item dto) throws Exception {
		return dao.insertLike(dto);
	}

	@Override
	public int deleteLike(ItemVo vo) throws Exception {
		return dao.deleteLike(vo);
	}

	
	/*
	//카카오페이
		// header() 셋팅
		private HttpHeaders getHeaders() throws Exception {
			
			HttpHeaders headers = new HttpHeaders();
			headers.add("Authorization", "KakaoAK 350f7c3672cdc83cebf0a98072bdcd72");//띄어쓰기 후 어드민키
			headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			
			return headers;
		}
		
		//결제준비
		public KakaopayReady payReady(Item dto) throws Exception {
			
			MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
			
			params.add("cid", "TC0ONETIME");  //테스트용으로 제공되는 cid
			params.add("partner_order_id", "megabox");
			params.add("partner_user_id", "megabox");
			params.add("item_name",	dto.getItTitle());
			params.add("quantity", "1");
			params.add("total_amount", dto.getItemPrice());
			params.add("item_code", dto.getItemSeq());
			params.add("tax_free_amount", "0");
			params.add("approval_url", "http://localhost:8080/booking/kakaopayApproval");
			params.add("cancel_url", "http://localhost:8080/booking/kakaopayCancel");
			params.add("fail_url", "http://localhost:8080/booking/kakaopayFail");
			//url은 앱 정보에 등록된 웹 플랫폼 도메인과 일치해야 함.
			
			HttpEntity<MultiValueMap<String, String>> body  = new HttpEntity<MultiValueMap<String, String>>(params, this.getHeaders());
			// 외부url요청 통로 열기.
			RestTemplate template = new RestTemplate();
			String url = "https://kapi.kakao.com/v1/payment/ready";
	        // template으로 값을 보내고 받아온 ReadyResponse값 readyResponse에 저장.
			KakaopayReady KakaopayReady = template.postForObject(url, body, KakaopayReady.class);
			
			return KakaopayReady;
		}
		
		//결제승인
		public KakaoPayApproval payApprove(String tid, String pgToken, Item dto) throws Exception  {
			
			// request값 담기.
			MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
			params.add("cid", "TC0ONETIME");
			params.add("tid", tid); 
			params.add("partner_order_id", "megabox"); //준비랑 똑같아야 됨
			params.add("partner_user_id", "megabox");
			params.add("pg_token", pgToken);
			
	        // 하나의 map안에 header와 parameter값을 담아줌.
			HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<>(params, this.getHeaders());
			
	        // 외부url 통신
			RestTemplate template = new RestTemplate();
			String url = "https://kapi.kakao.com/v1/payment/approve";
	        // 보낼 외부 url, 요청 메시지(header,parameter), 처리후 값을 받아올 클래스. 
			KakaoPayApproval KakaoPayApproval = template.postForObject(url, requestEntity, KakaoPayApproval.class);
			
			return KakaoPayApproval;

			}
	*/
	
	
}
