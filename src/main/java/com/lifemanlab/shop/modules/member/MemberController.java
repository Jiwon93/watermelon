package com.lifemanlab.shop.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lifemanlab.shop.common.base.BaseController;


@Controller
@RequestMapping(value = "/member/")
public class MemberController extends BaseController {
	
	@Autowired
	MemberServiceImpl service;
	

	@RequestMapping(value = "memberList")
	public String memberList(Model model, MemberVo vo) throws Exception {
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		
		vo.setShOptionDate(vo.getShOptionDate() == null ? 2 : vo.getShOptionDate());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/memberList";
	}
	
	@RequestMapping(value = "memberView")
	public String memberView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/member/xdmin/memberView";
	}
	
	@RequestMapping(value = "memberForm")
	public String memberForm() throws Exception {
		return "infra/member/xdmin/memberForm";
	}
	
	
	@RequestMapping(value = "memberInst")
	public String memberInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		vo.setMmSeq(dto.getMmSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberView";
	}
	
	@RequestMapping(value = "/memberHome", method = RequestMethod.GET)
	public String memberHome() throws Exception {
		return "infra/member/user/memberHome";
	}
	
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginForm() throws Exception {
		return "infra/member/user/loginForm";
	}
	
	@RequestMapping(value = "/idPwFindForm", method = RequestMethod.GET)
	public String idPwFindForm() throws Exception {
		return "infra/member/user/idPwFindForm";
	}
	
	@RequestMapping(value = "/memberDropFormB", method = RequestMethod.GET)
	public String memberDropFormB() throws Exception {
		return "infra/member/user/memberDropFormB";
	}
	
	@RequestMapping(value = "/memberDropFormC", method = RequestMethod.GET)
	public String memberDropFormC() throws Exception {
		return "infra/member/user/memberDropFormC";
	}
	
	@RequestMapping(value = "/memberModFormB", method = RequestMethod.GET)
	public String memberModFormB() throws Exception {
		return "infra/member/user/memberModFormB";
	}
	
	@RequestMapping(value = "/memberModFormC", method = RequestMethod.GET)
	public String memberModFormC() throws Exception {
		return "infra/member/user/memberModFormC";
	}
	
	@RequestMapping(value = "memberRegFormB")
	public String memberRegFormB() throws Exception {
		return "infra/member/user/memberRegFormB";
	}
	
	@RequestMapping(value = "memberRegFormC")
	public String memberRegFormC() throws Exception {
		return "infra/member/user/memberRegFormC";
	}
	
	@RequestMapping(value = "memberRegViewB")
	public String memberRegViewB() throws Exception {
		return "infra/member/user/memberRegViewB";
	}
	
	@RequestMapping(value = "memberRegViewC")
	public String memberRegViewC() throws Exception {
		return "infra/member/user/memberRegViewC";
	}
	
	@RequestMapping(value = "/pwChangFormB", method = RequestMethod.GET)
	public String pwChangFormB() throws Exception {
		return "infra/member/user/pwChangFormB";
	}
	
	@RequestMapping(value = "/pwChangFormC", method = RequestMethod.GET)
	public String pwChangFormC() throws Exception {
		return "infra/member/user/pwChangFormC";
	}
	
	@RequestMapping(value = "/saleReg", method = RequestMethod.GET)
	public String saleReg() throws Exception {
		return "infra/member/user/saleReg";
	}
	
	@RequestMapping(value = "/saleRegForm", method = RequestMethod.GET)
	public String saleRegForm() throws Exception {
		return "infra/member/user/saleRegForm";
	}
	
	@RequestMapping(value = "/purchaseHistory", method = RequestMethod.GET)
	public String purchaseHistory() throws Exception {
		return "infra/member/user/purchaseHistory";
	}
	
	@RequestMapping(value = "/saleManage", method = RequestMethod.GET)
	public String saleManage() throws Exception {
		return "infra/member/user/saleManage";
	}

}
