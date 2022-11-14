package com.lifemanlab.shop.modules.member;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.lifemanlab.shop.common.base.BaseServiceImpl;
import com.lifemanlab.shop.common.constants.Constants;
import com.lifemanlab.shop.common.util.UtilDatetime;
import com.lifemanlab.shop.common.util.UtilRegMod;
import com.lifemanlab.shop.common.util.UtilSecurity;

@Service
public class MemberServiceImpl extends BaseServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;
	
	@Override
	public void setRegMod(Member dto) throws Exception {
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
	public void uploadFiles(MultipartFile[] multipartFiles, Member dto, String tableName, int type, int maxNumber) throws Exception {
			
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
				dto.setPseq(dto.getMmSeq());

				dao.insertUploaded(dto);
    		}
		}
		
	}

	@Override
	public void deleteFiles(String[] deleteSeq, String[] deletePathFile, Member dto, String tableName) throws Exception {
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
	public void ueleteFiles(String[] deleteSeq, String[] deletePathFile, Member dto, String tableName) throws Exception {
			
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
	public List<Member> selectListUploaded(MemberVo vo) throws Exception {
		return dao.selectListUploaded(vo);
	}
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list = dao.selectList(vo);
		return list;
	}

	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		Member item = dao.selectOne(vo);
		return item;
	}
	
	@Override
	public List<Member> ccNameList() throws Exception {
		return dao.ccNameList();
	}
	
	@Override
	public int insert(Member dto) throws Exception {
		int result = dao.insert(dto);
		return result;
	}

	@Override
	public int update(Member dto) throws Exception {
		return dao.update(dto);
	}

	@Override
	public int uelete(Member dto) throws Exception {
		return dao.uelete(dto);
	}

	@Override
	public int delete(MemberVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	//Email 확인
	@Override
	public int selectOneIdCheck(Member dto) throws Exception {
		return dao.selectOneIdCheck(dto);
	}
	
	//Email 찾기
	@Override
	public Member findEmail(Member dto) throws Exception {
		return dao.findEmail(dto);
	}

	@Override
	public Member findEmailCheck(Member dto) throws Exception {
		return dao.findEmailCheck(dto);
	}

	//회원가입(일반)
	@Override
	public int memberRegC(Member dto) throws Exception {
		
		setRegMod(dto);
		
		dto.setMmPw(UtilSecurity.encryptSha256(dto.getMmPw()));
		dto.setMmName(dto.getMmName());
		//dto.setMmPwdModDate(UtilDatetime.nowDate());
		
		int result = dao.memberRegC(dto);
		return result;
	}
	
	@Override
	public int memberRegPhone(Member dto) throws Exception {
		int result = dao.memberRegPhone(dto);
		return result;
	}
	
	//회원가입(만렙)
	@Override
	public int memberRegB(Member dto) throws Exception {
		
		setRegMod(dto);
		
		dto.setMmPw(UtilSecurity.encryptSha256(dto.getMmPw()));
		dto.setMmName(dto.getMmName());
		
		return dao.memberRegB(dto);
	}
	
	//회원정보수정
	@Override
	public int memberMod(Member dto) throws Exception {
		setRegMod(dto);
		dao.memberMod(dto);
		if(!dto.getUploadImgProfile()[0].isEmpty()) {
			//deleteFiles(dto.getUploadImgProfileDeleteSeq(), dto.getUploadImgProfileDeletePathFile(), dto, "mmUploaded");
			uploadFiles(dto.getUploadImgProfile(), dto, "mmUploaded", dto.getUploadImgProfileType(), dto.getUploadImgProfileMaxNumber());
		} else {
			// by pass : empty
		}
		return 1;
	}
	
	@Override
	public int memberModB(Member dto) throws Exception {
		setRegMod(dto);
		dao.memberModB(dto);
		if(!dto.getUploadImgProfile()[0].isEmpty()) {
			//deleteFiles(dto.getUploadImgProfileDeleteSeq(), dto.getUploadImgProfileDeletePathFile(), dto, "mmUploaded");
			uploadFiles(dto.getUploadImgProfile(), dto, "mmUploaded", dto.getUploadImgProfileType(), dto.getUploadImgProfileMaxNumber());
		} else {
			// by pass : empty
		}
		return 1;
	}
	
	@Override
	public int memberModPhone(Member dto) throws Exception {
		int result = dao.memberModPhone(dto);
		return result;
	}

	//로그인
	@Override
	public Member selectOneId(Member dto) throws Exception {
		dto.setMmPw(UtilSecurity.encryptSha256(dto.getMmPw()));
		return dao.selectOneId(dto);
	}

	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		return dao.selectOneLogin(dto);
	}

	//비밀번호 확인
	@Override
	public int selectOnePwCheck(Member dto) throws Exception {
		return dao.selectOnePwCheck(dto);
	}

	//비밀번호 변경
	@Override
	public int pwChange(Member dto) throws Exception {
		int result = dao.pwChange(dto); 
		return result;
	}
	
	//마이페이지View
	@Override
	public Member selectOneView(MemberVo vo) throws Exception {
		Member item = dao.selectOneView(vo);
		return item;
	}

	//구매목록
	@Override
	public List<Member> selectPurchaseHistory(MemberVo vo) throws Exception {
		return dao.selectPurchaseHistory(vo);
	}

	//판매등록상품
	@Override
	public List<Member> selectSaleManage(MemberVo vo) throws Exception {
		return dao.selectSaleManage(vo);
	}

	//회원탈퇴
	@Override
	public int memberDrop(Member dto) throws Exception {
		return dao.memberDrop(dto);
	}

	@Override
	public Member snsLoginCheck(Member dto) throws Exception {
		return dao.snsLoginCheck(dto);
	}

	@Override
	public int kakaoInst(Member dto) throws Exception {
		return dao.kakaoInst(dto);
	}

	

	
}
