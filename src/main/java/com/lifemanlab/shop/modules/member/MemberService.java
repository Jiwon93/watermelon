package com.lifemanlab.shop.modules.member;

import java.util.List;

public interface MemberService {
	
	public List<Member> selectList(MemberVo vo) throws Exception; 
	
	public int selectOneCount(MemberVo vo) throws Exception;
	public Member selectOne(MemberVo vo) throws Exception;
 	
	public int insert(Member dto) throws Exception;
	public int update(Member dto) throws Exception;
	public int uelete(Member dto) throws Exception;
	public int delete(MemberVo vo) throws Exception;
	
	//Email 확인
	public int selectOneIdCheck(Member dto) throws Exception;
	
	//Email 찾기
	public Member findEmail(Member dto) throws Exception;
	public Member findEmailCheck(Member dto) throws Exception;
	
	//회원가입
	public int memberRegC(Member dto) throws Exception;
	public int memberRegPhoneC(Member dto) throws Exception;
	
	//회원정보수정
	public int memberMod(Member dto) throws Exception;
	
	public int memberModPhone(Member dto) throws Exception;
	
	//비밀번호 확인
	public int selectOnePwCheck(Member dto) throws Exception;
	
	//비밀번호 변경
	public int pwChange(Member dto) throws Exception;
	
	//마이페이지View
	public Member selectOneView(MemberVo vo) throws Exception;
	
	//암호화
	public Member selectOneId(Member dto) throws Exception;
	public Member selectOneLogin(Member dto) throws Exception;

}
