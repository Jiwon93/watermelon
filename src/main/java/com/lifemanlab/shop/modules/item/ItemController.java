package com.lifemanlab.shop.modules.item;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/item/")
public class ItemController {
	
	@Autowired
	ItemServiceImpl service;
	
	//판매목록 리스트(관리자)
	@RequestMapping(value = "itemList")
	public String itemList(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Item> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/xdmin/item/itemList";
	}
	
	
	//구매목록 리스트(관리자)
	@RequestMapping(value = "itemMenu")
	public String itemMenu(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Item> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/user/item/itemMenu";
	}
	
	@RequestMapping(value = "itemMenuView")
	public String itemMenuView(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		
		Item item = service.selectOne(vo);
		System.out.println("controller item: " + item);
		model.addAttribute("item", item);
		
		return "infra/user/item/itemMenuView";
	}
	
	@RequestMapping(value = "itemPayment")
	public String itemPayment() throws Exception {
		return "infra/user/item/itemPayment";
	}
	
	public void setCheckboxNull(Item dto) throws Exception {
		dto.setResponsiveWeb(dto.getResponsiveWeb() == null ? 0 : dto.getResponsiveWeb());
		dto.setContentUpload(dto.getContentUpload() == null ? 0 : dto.getContentUpload());
		dto.setSourceCode(dto.getSourceCode() == null ? 0 : dto.getSourceCode());
		dto.setPagePlus(dto.getPagePlus() == null ? 0 : dto.getPagePlus());
		dto.setDesign(dto.getDesign() == null ? 0 : dto.getDesign());
		dto.setFunctionPlus(dto.getFunctionPlus() == null ? 0 : dto.getFunctionPlus());
		dto.setQuickWork(dto.getQuickWork() == null ? 0 : dto.getQuickWork());
		dto.setPlusMod(dto.getPlusMod() == null ? 0 : dto.getPlusMod());
	}
	
	//상품등록
	@RequestMapping(value = "saleRegInst")
	public String productReg(ItemVo vo, Item dto, RedirectAttributes redirectAttributes) throws Exception {
		
		setCheckboxNull(dto);
		service.productReg(dto);
		vo.setItemSeq(dto.getItemSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/saleManage";
	}
	
}
