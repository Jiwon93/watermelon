package com.lifemanlab.shop.modules.item;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/item/")
public class ItemController {
	
	@Autowired
	ItemServiceImpl service;
	

	@RequestMapping(value = "itemMenu")
	public String itemMenu(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		Item item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/member/item/itemMenu";
	}
	
	@RequestMapping(value = "itemMenuView")
	public String itemMenuView() throws Exception {
		return "infra/member/item/itemMenuView";
	}
	
	@RequestMapping(value = "itemPayment")
	public String itemPayment() throws Exception {
		return "infra/member/item/itemPayment";
	}
	
}
