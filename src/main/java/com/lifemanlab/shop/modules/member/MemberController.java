package com.lifemanlab.shop.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lifemanlab.shop.common.base.BaseController;
import com.lifemanlab.shop.common.constants.Constants;


@Controller
@RequestMapping(value = "/member/")
public class MemberController extends BaseController {
	
	@Autowired
	MemberServiceImpl service;
	

	@RequestMapping(value = "memberList")
	public String memberList(@ModelAttribute("vo")MemberVo vo, Model model) throws Exception {
		
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
	
	@SuppressWarnings(value = {"all"})
	@RequestMapping(value = "memberInst")
	public String memberInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		vo.setMmSeq(dto.getMmSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberView";
	}
	
	//마이페이지View
	@RequestMapping(value = "memberViewC")
	public String memberViewC(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member item = service.selectOneView(vo);
		model.addAttribute("item", item);
		
		return "infra/member/user/memberViewC";
	}
	
	//회원정보수정
	@RequestMapping(value = "memberMod")
	public String memberMod(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		int result = service.memberMod(dto);
		System.out.println("controller.Mod: " + result);
		return "redirect:/member/memberViewC";
	}
	
	//Email 찾기
	@ResponseBody
	@RequestMapping(value = "findEmail")
	public Map<String, Object> findEmail(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.findEmail(dto);
		
		if (rtMember != null) {
			Member rtMember2 = service.findEmailCheck(dto);
			
			if (rtMember2 != null ) {
				httpSession.setAttribute("sessEmail", rtMember2.getMmEmail());
				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
		
	//로그인
	@ResponseBody
	@RequestMapping(value = "loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Member rtMember = service.selectOneId(dto);

		if (rtMember != null) {
			Member rtMember2 = service.selectOneLogin(dto);

			if (rtMember2 != null) {
				
				//if(dto.getAutoLogin() == true) {
				//	UtilCookie.createCookie(Constants.COOKIE_NAME_SEQ, rtMember2.getMmSeq(), Constants.COOKIE_DOMAIN, Constants.COOKIE_PATH, Constants.COOKIE_MAXAGE);
				//} else {
					// by pass
				//}
				
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember2.getMmSeq());
				httpSession.setAttribute("sessEmail", rtMember2.getMmEmail());
				httpSession.setAttribute("sessName", rtMember2.getMmName());
				httpSession.setAttribute("sessRank", rtMember2.getMmRank());

				//rtMember2.setIflgResultNy(1);
				//service.insertLogLogin(rtMember2);

				//Date date = rtMember2.getMmPwModDate();
				//LocalDateTime mmPwModDateLocalDateTime = LocalDateTime.ofInstant(date.toInstant(), ZoneId.systemDefault());

				//if (ChronoUnit.DAYS.between(ifmmPwdModDateLocalDateTime, UtilDateTime.nowLocalDateTime()) > Constants.PASSWOPRD_CHANGE_INTERVAL) {
				//	returnMap.put("changePwd", "true");
				//}

				returnMap.put("rt", "success");
			} else {
				//dto.setMmSeq(rtMember.getMmSeq());
				//dto.setIflgResultNy(0);
				//service.insertLogLogin(dto);

				returnMap.put("rt", "fail");
			}
		} else {
			//dto.setIflgResultNy(0);
			//service.insertLogLogin(dto);

			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	//로그아웃
	@ResponseBody
	@RequestMapping(value = "logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		/* UtilCookie.deleteCookie(); */
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	//아이디 확인
	@ResponseBody
	@RequestMapping(value = "checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		int result = service.selectOneIdCheck(dto);
		
		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	  //비밀번호 확인
	  @ResponseBody
	  @RequestMapping(value = "checkPw") 
	  public Map<String, Object> checkPw(Member dto) throws Exception { 
		  Map<String, Object> returnMap = new HashMap<String, Object>(); 
		  int result = service.selectOnePwCheck(dto); 
		  
		  if (result > 0) { 
			  returnMap.put("rt", "success"); 
		  } else {
			  returnMap.put("rt", "fail"); 
		  } 
		  return returnMap; 
	  }
		 
	//비밀번호 변경
	@RequestMapping(value = "pwChange")
	public String pwChange(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		int result = service.pwChange(dto);
		System.out.println("controller.pwChange: " + result);
		return "redirect:/member/pwChangeFormC";
	}
	
	//회원가입
	@RequestMapping(value = "memberRegCInst")
	public String memberRegCInst(Member dto) throws Exception {
		int result = service.memberRegC(dto);
		System.out.println("controller.Reg: " + result);
		
		int result2 = service.memberRegPhoneC(dto);
		System.out.println("controller.PhoneReg: " + result2);
		return "redirect:/member/loginForm";
	}
		
		@RequestMapping(value = "memberUpdt")
		public String memberUpdt(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
			service.update(dto);
			return "redirect:/member/memberList";
		}
		
		@RequestMapping(value = "memberUele")
		public String memberUele(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
			service.uelete(dto);
			return "redirect:/member/memberList";
		}
		
		@RequestMapping(value = "memberDele")
		public String memberDele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
			service.delete(vo);
			return "redirect:/member/memberList";
		}
		
		@RequestMapping(value = "/index")
		public String index() throws Exception {
			return "infra/member/index";
		}
		
		@RequestMapping(value = "/memberHome")
		public String memberHome() throws Exception {
			return "infra/member/user/memberHome";
		}
		
		@RequestMapping(value = "/loginForm")
		public String loginForm() throws Exception {
			return "infra/member/user/loginForm";
		}
		
		@RequestMapping(value = "/kakaoLogin")
		public String kakaoLogin() throws Exception {
			return "redirect:/member/index";
		}
		
		@RequestMapping(value = "/idPwFindForm")
		public String idPwFindForm() throws Exception {
			return "infra/member/user/idPwFindForm";
		}
		
		@RequestMapping(value = "/memberDropFormC")
		public String memberDropFormC() throws Exception {
			return "infra/member/user/memberDropFormC";
		}
		
		@RequestMapping(value = "/memberModFormC")
		public String memberModFormC() throws Exception {
			return "infra/member/user/memberModFormC";
		}
		
		@RequestMapping(value = "memberRegFormC")
		public String memberRegFormC() throws Exception {
			return "infra/member/user/memberRegFormC";
		}
		
		@RequestMapping(value = "/pwChangeFormC")
		public String pwChangFormC() throws Exception {
			return "infra/member/user/pwChangeFormC";
		}
		
		@RequestMapping(value = "/saleReg")
		public String saleReg() throws Exception {
			return "infra/member/user/saleReg";
		}
		
		@RequestMapping(value = "/saleRegForm")
		public String saleRegForm() throws Exception {
			return "infra/member/user/saleRegForm";
		}
		
		@RequestMapping(value = "/purchaseHistory")
		public String purchaseHistory() throws Exception {
			return "infra/member/user/purchaseHistory";
		}
		
		@RequestMapping(value = "/saleManage")
		public String saleManage() throws Exception {
			return "infra/member/user/saleManage";
		}

		@RequestMapping(value = "/xdminLoginForm")
		public String xdminLoginForm() throws Exception {
			return "infra/member/xdmin/xdminLoginForm";
		}
}
