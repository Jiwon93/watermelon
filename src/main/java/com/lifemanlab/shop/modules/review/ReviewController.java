package com.lifemanlab.shop.modules.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/review/")
public class ReviewController {

	@Autowired
	ReviewServiceImpl service;
	
	@RequestMapping(value = "reviewList")
	public String reviewList(@ModelAttribute("vo") ReviewVo vo, Model model) throws Exception {
		List<Review> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/xdmin/review/reviewList";
	}
	
	@RequestMapping(value = "reviewForm")
	public String reviewForm() throws Exception {
		return "infra/xdmin/review/reviewForm";
	}
	
	@RequestMapping(value = "reviewView")
	public String reviewView(@ModelAttribute("vo") ReviewVo vo, Model model) throws Exception {
		Review item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/xdmin/review/reviewView";
	}
}
