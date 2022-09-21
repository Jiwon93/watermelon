package com.lifemanlab.shop.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

	
}
