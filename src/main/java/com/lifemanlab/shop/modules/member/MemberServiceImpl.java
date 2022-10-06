package com.lifemanlab.shop.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lifemanlab.shop.common.util.UtilSecurity;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list = dao.selectList(vo);
		return list;
	}

	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		int count = dao.selectOneCount(vo);
		System.out.println("service count: " + count);
		return count;
	}

	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		Member item = dao.selectOne(vo);
		System.out.println("service item: " + item);
		return item;
	}
	
	@Override
	public int insert(Member dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
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

	//회원가입
	@Override
	public int memberRegC(Member dto) throws Exception {
		
		dto.setMmPw(UtilSecurity.encryptSha256(dto.getMmPw()));
		dto.setMmName(dto.getMmName());
		//dto.setMmPwdModDate(UtilDateTime.nowDate());
		
		int result = dao.memberRegC(dto);
		System.out.println("service.Reg: " + result);
		return result;
	}
	
	@Override
	public int memberRegPhoneC(Member dto) throws Exception {
		int result = dao.memberRegPhoneC(dto);
		return result;
	}
	
	//회원정보수정
	@Override
	public int memberMod(Member dto) throws Exception {
		int result = dao.memberMod(dto);
		return result;
	}

	//로그인
	@Override
	public Member selectOneId(Member dto) throws Exception {
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
		System.out.println("service.pwChange: " + result);
		return result;
	}
	
	//마이페이지View
	@Override
	public Member selectOneView(MemberVo vo) throws Exception {
		Member item = dao.selectOneView(vo);
		System.out.println("service.view item: " + item);
		return item;
	}

	

	
}
