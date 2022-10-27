package com.lifemanlab.shop.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lifemanlab.shop.common.base.BaseServiceImpl;
import com.lifemanlab.shop.common.util.UtilSecurity;

@Service
public class MemberServiceImpl extends BaseServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;
	/*
	public void uploadFiles(MultipartFile[] multipartFiles, Member dto, String tableName, int type, int maxNumber) throws Exception {
		System.out.println(" dto.getUploadImgMaxNumber() : " + dto.getUploadImgMaxNumber());
		
		for(int i=0; i<multipartFiles.length; i++) {
    	
			if(!multipartFiles[i].isEmpty()) {
				
				System.out.println(i + ": multipartFiles[i].getOriginalFilename() : " + multipartFiles[i].getOriginalFilename());
				
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
//				dto.setDefaultNy(j == 0 ? 1 : 0);
				dto.setSort(maxNumber + i + 1);
				dto.setpSeq(dto.getMmSeq());

				dao.insertUploaded(dto);
    		}
		}
	}
	*/
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list = dao.selectList(vo);
		return list;
	}

	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		int count = dao.selectOneCount(vo);
		return count;
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
	
	//이미지, 파일 업로드
	/*
	@Override
	public List<Member> selectListUploaded(MemberVo vo) throws Exception {
		return dao.selectListUploaded(vo);
	}
	*/
	
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
		
		dto.setMmPw(UtilSecurity.encryptSha256(dto.getMmPw()));
		dto.setMmName(dto.getMmName());
		//dto.setMmPwdModDate(UtilDateTime.nowDate());
		
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
		
		dto.setMmPw(UtilSecurity.encryptSha256(dto.getMmPw()));
		dto.setMmName(dto.getMmName());
		
		return dao.memberRegB(dto);
	}
	
	//회원정보수정
	@Override
	public int memberMod(Member dto) throws Exception {
		int result = dao.memberMod(dto);
		//uploadFiles(dto.getMmUploadedProfileImage(), dto, "mmUploaded", 2, dto.getUploadImgMaxNumber());
		return result;
	}
	
	@Override
	public int memberModPhone(Member dto) throws Exception {
		int result = dao.memberModPhone(dto);
		return result;
	}

	//로그인
	@Override
	public Member selectOneId(Member dto) throws Exception {
		/* dto.setMmPw(UtilSecurity.encryptSha256(dto.getMmPw())); */
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

	

	
}
