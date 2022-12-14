package com.lifemanlab.shop.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServiceImpl implements CodeGroupService {
	
	@Autowired
	CodeGroupDao dao;
	
	//@Override
	//public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
	//	return dao.selectList(vo);
	//}
	
	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
		List<CodeGroup> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int selectOneCount(CodeGroupVo vo) throws Exception {
		int count = dao.selectOneCount(vo);
		System.out.println("service count: " + count);
		return count;
	}


	@Override
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception {
		CodeGroup item = dao.selectOne(vo);
		System.out.println("service item: " + item);
		return item;
	}



	@Override
	public int insert(CodeGroup dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service.inst result: " + result);
		return result;
	}



	@Override
	public int update(CodeGroup dto) throws Exception {
		int result = dao.update(dto);
		System.out.println("service.updt result: " + result);
		return result;
	}

	@Override
	public int uelete(CodeGroup dto) throws Exception {
		return dao.uelete(dto);
	}

	@Override
	public int delete(CodeGroupVo vo) throws Exception {
		return dao.delete(vo);
	}


}
