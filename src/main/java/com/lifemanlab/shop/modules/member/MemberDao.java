package com.lifemanlab.shop.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.lifemanlab.shop.modules.member.MemberMapper";
	
	//Member
	public List<Member> selectList(MemberVo vo){ return sqlSession.selectList("com.lifemanlab.shop.modules.member.MemberMapper.selectList", vo); }
	public int selectOneCount(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public List<Member> ccNameList() { return sqlSession.selectList(namespace + ".ccNameList", ""); }
	public int insert(Member dto) { return sqlSession.insert(namespace + ".insert", dto); }
	public int update(Member dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Member dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(MemberVo vo) { return sqlSession.delete(namespace + ".delete", vo); }
	
	//회원탈퇴
	public int memberDrop(Member dto) { return sqlSession.update(namespace + ".memberDrop", dto); }
	
	//이미지, 파일 업로드
	public int insertUploaded(Member dto) { return sqlSession.insert("Base" + ".insertUploaded" , dto); }
	public int ueleteUploaded(Member dto) { return sqlSession.insert("Base" + ".ueleteUploaded", dto); }
	public int deleteUploaded(Member dto) { return sqlSession.insert("Base" + ".deleteUploaded", dto); }
	public List<Member> selectListUploaded(MemberVo vo) { return sqlSession.selectList(namespace + ".selectListUploaded", vo); }
	
	//회원가입(일반)
	public int memberRegC(Member dto) { return sqlSession.insert(namespace + ".memberRegC", dto); }
	public int memberRegPhone(Member dto) { return sqlSession.insert(namespace + ".memberRegPhone", dto); }
		
	//회원가입(만렙)
	public int memberRegB(Member dto) { return sqlSession.insert(namespace + ".memberRegB", dto); }
	
	//회원정보 수정
	public int memberMod(Member dto) { return sqlSession.update(namespace + ".memberMod", dto); }
		
	public int memberModPhone(Member dto) { return sqlSession.update(namespace + ".memberModPhone", dto); }
	
	//Email 확인
	public int selectOneIdCheck(Member dto) { return sqlSession.selectOne(namespace + ".selectOneIdCheck", dto); }
	
	//Email 찾기
	public Member findEmail(Member dto) { return sqlSession.selectOne(namespace + ".findEmail", dto); }
	public Member findEmailCheck(Member dto) { return sqlSession.selectOne(namespace + ".findEmailCheck", dto); }
		
	//비밀번호 확인
	public int selectOnePwCheck(Member dto) { return sqlSession.selectOne(namespace + ".selectOnePwCheck", dto); }
	
	//비밀번호 변경
	public int pwChange(Member dto) { return sqlSession.update(namespace + ".pwChange", dto); }
	
	//로그인
	public Member selectOneId(Member dto) { return sqlSession.selectOne(namespace + ".selectOneId", dto); }
	public Member selectOneLogin(Member dto) { return sqlSession.selectOne(namespace + ".selectOneLogin", dto); }
	
	//마이페이지View
	public Member selectOneView(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOneView", vo); }
		
	//구매목록
	public List<Member> selectPurchaseHistory(MemberVo vo) { return sqlSession.selectList(namespace + ".selectPurchaseHistory", vo); }
	
	//판매등록상품
	public List<Member> selectSaleManage(MemberVo vo) { return sqlSession.selectList(namespace + ".selectSaleManage", vo); }
}
