package com.lifemanlab.shop.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lifemanlab.shop.common.base.BaseController;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController extends BaseController{
	
	@Autowired
	CodeGroupServiceImpl service;
	
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {

		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		
		vo.setShOptionDate(vo.getShOptionDate() == null ? 2 : vo.getShOptionDate());
		/*
		 * vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ?
		 * null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		 * vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null :
		 * UtilDateTime.add59TimeString(vo.getShDateEnd()));
		 */
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		/*
		 * vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		 * vo.setShDateStart(vo.getShDateStart() == null ?
		 * UtilDatetime.calculateDayString(UtilDatetime.nowLocalDateTime(),
		 * Constants.DATE_INERVAL) : vo.getShDateStart());
		 * vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDatetime.nowString() :
		 * vo.getShDateEnd());
		 */
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		CodeGroup item = service.selectOne(vo);
		System.out.println("controller item: " + item);
		model.addAttribute("item", item);
		
		return "infra/codegroup/xdmin/codeGroupView";
	} 
		
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm() throws Exception {
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@SuppressWarnings(value = {"all"})
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		vo.setCcgSeq(dto.getCcgSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupView";
	}
	
	@SuppressWarnings(value = {"all"})
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupUele")
	public String codeGroupUele(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		service.uelete(dto);
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupDele")
	public String codeGroupDele(CodeGroupVo vo, RedirectAttributes redirctAttributes) throws Exception {
		service.delete(vo);
		return "redirect:/codeGroup/codeGroupList";
	}
}
