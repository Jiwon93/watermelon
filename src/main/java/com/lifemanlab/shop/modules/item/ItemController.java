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
		return "infra/item/xdmin/itemList";
	}
	
	
	//구매목록 리스트(관리자)

	@RequestMapping(value = "itemMenu")
	public String itemMenu(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Item> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/item/itemMenu";
	}
	
	@RequestMapping(value = "itemMenuView")
	public String itemMenuView(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		
		Item item = service.selectOne(vo);
		System.out.println("controller item: " + item);
		model.addAttribute("item", item);
		
		return "infra/member/item/itemMenuView";
	}
	
	@RequestMapping(value = "itemPayment")
	public String itemPayment() throws Exception {
		return "infra/member/item/itemPayment";
	}
	
	public void setCheckboxNull(Item dto) throws Exception {
		//dto.setEmail_ctr(dto.getEmail_ctr() == null ? 0 : dto.getEmail_ctr());
		//dto.setKakao_ctr(dto.getKakao_ctr() == null ? 0 : dto.getKakao_ctr());
		//dto.setSms_ctr(dto.getSms_ctr() == null ? 0 : dto.getSms_ctr());
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
