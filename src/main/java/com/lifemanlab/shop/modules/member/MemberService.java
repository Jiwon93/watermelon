package com.lifemanlab.shop.modules.member;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;


public interface MemberService {
	
	public void setRegMod(Member dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, Member dto, String tableName, int type, int maxNumber) throws Exception;
	public void deleteFiles(String[] deleteSeq, String[] deletePathFile, Member dto, String tableName) throws Exception;
	public void ueleteFiles(String[] deleteSeq, String[] deletePathFile, Member dto, String tableName) throws Exception;
	
	//member
	public List<Member> selectList(MemberVo vo) throws Exception; 
	public int selectOneCount(MemberVo vo) throws Exception;
	public Member selectOne(MemberVo vo) throws Exception;
	public List<Member> ccNameList() throws Exception;
	public int insert(Member dto) throws Exception;
	public int update(Member dto) throws Exception;
	public int uelete(Member dto) throws Exception;
	public int delete(MemberVo vo) throws Exception;
	
	//회원탈퇴
	public int memberDrop(Member dto) throws Exception;
	
	//이미지, 파일 업로드
	List<Member> selectListUploaded(MemberVo vo) throws Exception;
	
	//Email 확인
	public int selectOneIdCheck(Member dto) throws Exception;
	
	//Email 찾기
	public Member findEmail(Member dto) throws Exception;
	public Member findEmailCheck(Member dto) throws Exception;
	
	//회원가입(일반)
	public int memberRegC(Member dto) throws Exception;
	public int memberRegPhone(Member dto) throws Exception;
	
	//회원가입(만렙)
	public int memberRegB(Member dto) throws Exception;
	
	//회원정보수정
	public int memberMod(Member dto) throws Exception;
	public int memberModB(Member dto) throws Exception;
	public int memberModPhone(Member dto) throws Exception;
	
	//비밀번호 확인
	public int selectOnePwCheck(Member dto) throws Exception;
	
	//비밀번호 변경
	public int pwChange(Member dto) throws Exception;
	
	//마이페이지View
	public Member selectOneView(MemberVo vo) throws Exception;
	
	//로그인
	public Member selectOneId(Member dto) throws Exception;
	public Member selectOneXdminId(Member dto) throws Exception;
	public Member selectOneLogin(Member dto) throws Exception;
	public Member snsLoginCheck(Member dto) throws Exception;
	public int kakaoInst(Member dto) throws Exception;
	public int naverInst(Member dto) throws Exception;
	
	//구매목록
	public List<Member> selectPurchaseHistory(MemberVo vo) throws Exception;
	
	//판매등록상품
	public List<Member> selectSaleManage(MemberVo vo) throws Exception;

}
