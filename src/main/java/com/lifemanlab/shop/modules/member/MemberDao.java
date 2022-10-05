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
	
	public List<Member> selectList(MemberVo vo){ 
		List<Member> list = sqlSession.selectList("com.lifemanlab.shop.modules.member.MemberMapper.selectList", vo);
		return list; 
	}
	
	public int selectOneCount(MemberVo vo) {
		int count = sqlSession.selectOne(namespace + ".selectOneCount", vo);
		System.out.println("dao count: " + count);
		return count;
	}
	
	public Member selectOne(MemberVo vo) {
		Member item = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao item: " + item);
		return item;
	}
	
	public int insert(Member dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	//회원가입
	public int memberRegC(Member dto) {
		int result = sqlSession.insert(namespace + ".memberRegC", dto);
		System.out.println("dao.Reg: " + result);
		return result;
	}
	
	public int memberRegPhoneC(Member dto) {
		int result = sqlSession.insert(namespace + ".memberRegPhoneC", dto);
		return result;
	}
	
	//Email 확인
	public int selectOneIdCheck(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneIdCheck", dto);
	}
	
	//Email 찾기
	public Member findEmail(MemberVo vo) {
		Member result = sqlSession.selectOne(namespace + ".findEmail", vo);
		System.out.println("dao.findEmail: " + result);
		return result;
	}
	
	//비밀번호 확인
	public int selectOnePwCheck(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOnePwCheck", dto);
	}
	
	//비밀번호 변경
	public int pwChange(Member dto) { 
		int result = sqlSession.update(namespace + ".pwChange", dto);
		System.out.println("dao.pwChange: " + result);
		return result;  
	}
	
	//암호화
	public Member selectOneId(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneId", dto);
	}
	
	public Member selectOneLogin(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto);
	}
	
	//마이페이지View
	public Member selectOneView(MemberVo vo) {
		Member item = sqlSession.selectOne(namespace + ".selectOneView", vo);
		System.out.println("dao.view item: " + item);
		return item;
	}
	
	public int update(Member dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Member dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(MemberVo vo) { return sqlSession.delete(namespace + ".delete", vo); }

}
