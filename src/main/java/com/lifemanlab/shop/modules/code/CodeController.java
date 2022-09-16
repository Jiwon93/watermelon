package com.lifemanlab.shop.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lifemanlab.shop.common.base.BaseController;

@Controller
@RequestMapping(value = "/code/")
public class CodeController extends BaseController {

	@Autowired
	CodeServiceImpl service;
	

	@RequestMapping(value = "codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());

		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}
	
	@RequestMapping(value = "codeView")
	public String codeView(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		List<Code> ccgNameList = service.ccgNameList();
		model.addAttribute("ccgNameList", ccgNameList);
		Code item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/code/xdmin/codeView";
	}
	
	@RequestMapping(value = "codeForm")
	public String codeForm(Model model) throws Exception {
		List<Code> ccgNameList = service.ccgNameList();
		model.addAttribute("ccgNameList", ccgNameList);
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value = "codeInst")
	public String codeInst(Code dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/code/codeList";
	}
	
	@SuppressWarnings(value = {"all"})
	@RequestMapping(value = "codeUpdt")
	public String codeUpdt(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeUele")
	public String codeUele(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		service.uelete(dto);
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeDele")
	public String codeDele(CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.delete(vo);
		return "redirect:/code/codeList";
	}
	
}
