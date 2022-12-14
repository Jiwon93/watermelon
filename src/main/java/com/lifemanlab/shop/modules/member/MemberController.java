package com.lifemanlab.shop.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lifemanlab.shop.common.base.BaseController;
import com.lifemanlab.shop.common.constants.Constants;
import com.lifemanlab.shop.common.util.UtilDatetime;
import com.lifemanlab.shop.modules.code.CodeServiceImpl;


@Controller
@RequestMapping(value = "/member/")
public class MemberController extends BaseController {
	
	@Autowired
	MemberServiceImpl service;
	 
	//관리자
	public void setSearch(MemberVo vo) throws Exception {
		vo.setShUseNy(vo.getShUseNy() == null ? 1 : vo.getShUseNy());
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
		vo.setShOptionDate(vo.getShOptionDate() == null ? null : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDatetime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDatetime.add59TimeString(vo.getShDateEnd()));
	}
	
	/*
	@RequestMapping(value = "memberList")
	public String memberList(@ModelAttribute("vo")MemberVo vo, Model model) throws Exception {
		//setSearch(vo);
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/xdmin/member/memberList";
	}
	*/
	
	@RequestMapping(value = "memberAjaxList")
	public String memberAjaxList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		setSearch(vo);
		return "infra/xdmin/member/memberAjaxList";
	}
	
	@RequestMapping(value = "memberAjaxLita")
	public String memberAjaxLita(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
		
		return "infra/xdmin/member/memberAjaxLita";
	}
	
	
	@RequestMapping(value = "memberView")
	public String memberView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/xdmin/member/memberView";
	}
	
	@RequestMapping(value = "memberForm")
	public String memberForm() throws Exception {
		return "infra/xdmin/member/memberForm";
	}
	
	@SuppressWarnings(value = {"all"})
	@RequestMapping(value = "memberInst")
	public String memberInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		vo.setMmSeq(dto.getMmSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberView";
	}
	
	//사용자
	//마이페이지View
	@RequestMapping(value = "memberViewC")
	public String memberViewC(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member item = service.selectOneView(vo);
		model.addAttribute("item", item);
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		return "infra/user/member/clients/memberViewC";
	}
	
	@RequestMapping(value = "memberViewB")
	public String memberViewB(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member item = service.selectOneView(vo);
		model.addAttribute("item", item);
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		return "infra/user/member/pro/memberViewB";
	}
	

	//마이페이지Mod
	@RequestMapping(value = "memberModFormC")
	public String memberModFormC(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member item = service.selectOneView(vo);
		List<Member> ccNameList = service.ccNameList();
		model.addAttribute("ccNameList", ccNameList);
		model.addAttribute("item", item);
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		return "infra/user/member/clients/memberModFormC";
	}
	
	@RequestMapping(value = "memberModFormB")
	public String memberModFormB(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member item = service.selectOneView(vo);
		List<Member> ccNameList = service.ccNameList();
		model.addAttribute("ccNameList", ccNameList);
		model.addAttribute("item", item);
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		return "infra/user/member/pro/memberModFormB";
	}
	
	//회원정보수정
	@RequestMapping(value = "memberMod")
	public String memberMod(@ModelAttribute("vo") MemberVo vo, Member dto, HttpSession httpSession, RedirectAttributes redirectAttributes) throws Exception {
		dto.setMmSeq((String) httpSession.getAttribute("sessSeq"));
		service.memberMod(dto);
		service.memberModPhone(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberViewC";
	}
	
	@RequestMapping(value = "memberModB")
	public String memberModB(@ModelAttribute("vo") MemberVo vo, Member dto, HttpSession httpSession, RedirectAttributes redirectAttributes) throws Exception {
		dto.setMmSeq((String) httpSession.getAttribute("sessSeq"));
		service.memberModB(dto);
		service.memberModPhone(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberViewB";
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
				System.out.println("sessSeq: " + httpSession.getAttribute("sessSeq"));
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
	
	//관리자 로그인
	@ResponseBody
	@RequestMapping(value = "xdminLoginProc")
	public Map<String, Object> xdminLoginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Member rtMember = service.selectOneXdminId(dto);

		if (rtMember != null) {
			Member rtMember2 = service.selectOneLogin(dto);

			if (rtMember2 != null) {
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember2.getMmSeq());
				httpSession.setAttribute("sessEmail", rtMember2.getMmEmail());
				httpSession.setAttribute("sessName", rtMember2.getMmName());
				System.out.println("sessSeq: " + httpSession.getAttribute("sessSeq"));
				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "kakaoLoginProc")
	public Map<String, Object> kakaoLoginProc(Member dto, HttpSession httpSession) throws Exception {
	    Map<String, Object> returnMap = new HashMap<String, Object>();
	    
		Member kakaoLogin = service.snsLoginCheck(dto);
		
		 System.out.println("test : " + dto.getToken());
		
		if (kakaoLogin == null) {
			service.kakaoInst(dto);
			
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			// session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
            session(dto, httpSession); 
			returnMap.put("rt", "success");
		} else {
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			
			// session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
			session(kakaoLogin, httpSession);
			returnMap.put("rt", "success");
		}
		return returnMap;
	}

	@ResponseBody
	@RequestMapping(value = "naverLoginProc")
	public Map<String, Object> naverLoginProc(Member dto, HttpSession httpSession) throws Exception {
	    Map<String, Object> returnMap = new HashMap<String, Object>();
	    
		Member naverLogin = service.snsLoginCheck(dto);
		
		if (naverLogin == null) {
			service.naverInst(dto);
			
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			// session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
            session(dto, httpSession); 
			returnMap.put("rt", "success");
		} else {
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			
			// session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
			session(naverLogin, httpSession);
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	 public void session(Member dto, HttpSession httpSession) {
	     httpSession.setAttribute("sessSeq", dto.getMmSeq());    
	     httpSession.setAttribute("sessEmail", dto.getMmEmail());
	     httpSession.setAttribute("sessName", dto.getMmName());
	     //httpSession.setAttribute("sessUser", dto.getUser_div());
	     //httpSession.setAttribute("sessImg", dto.getSnsImg());
	     //httpSession.setAttribute("sessSns", dto.getSns_type());
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
	public String pwChange(Member dto, RedirectAttributes redirectAttributes) throws Exception {
		int result = service.pwChange(dto);
		System.out.println("controller.pwChange: " + result);
		return "redirect:/member/pwChangeFormC";
	}
	
	//회원가입(일반)
	@RequestMapping(value = "memberRegCInst")
	public String memberRegCInst(Member dto) throws Exception {
		int result = service.memberRegC(dto);
		System.out.println("controller.Reg: " + result);
		
		int result2 = service.memberRegPhone(dto);
		System.out.println("controller.PhoneReg: " + result2);
		return "redirect:/member/loginForm";
	}
	
	//회원가입(만렙)
	@RequestMapping(value = "memberRegBInst")
	public String memberRegBInst(Member dto) throws Exception {
		service.memberRegB(dto);
		service.memberRegPhone(dto);
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
	
	@RequestMapping(value = "index")
	public String index() throws Exception {
		return "infra/user/index";
	}
	
	//회원탈퇴
	@RequestMapping(value = "memberDrop")
	public String memberDrop(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception{
		service.memberDrop(dto);
		return "redirect:/member/memberHome";
	}
	
	//메인 홈
	@RequestMapping(value = "memberHome")
	public String memberHome(Model model) throws Exception {
		
		List<Member> ccNameList = service.ccNameList();
		model.addAttribute("ccNameList", ccNameList);
		
		return "infra/user/member/memberHome";
	}
	
	@RequestMapping(value = "loginForm")
	public String loginForm() throws Exception {
		return "infra/user/member/loginForm";
	}
	
	@RequestMapping(value = "kakaoLogin")
	public String kakaoLogin() throws Exception {
		return "redirect:/member/index";
	}
	
	@RequestMapping(value = "idPwFindForm")
	public String idPwFindForm() throws Exception {
		return "infra/user/member/idPwFindForm";
	}
	
	@RequestMapping(value = "memberDropFormC")
	public String memberDropFormC(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		return "infra/user/member/clients/memberDropFormC";
	}
	
	@RequestMapping(value = "memberDropFormB")
	public String memberDropFormB(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		return "infra/user/member/pro/memberDropFormB";
	}
	
	@RequestMapping(value = "memberRegFormC")
	public String memberRegFormC(Model model) throws Exception {
		
		List<Member> ccNameList = service.ccNameList();
		model.addAttribute("ccNameList", ccNameList);
		return "infra/user/member/clients/memberRegFormC";
	}
	
	@RequestMapping(value = "memberRegFormB")
	public String memberRegFormB(Model model) throws Exception {
		
		List<Member> ccNameList = service.ccNameList();
		model.addAttribute("ccNameList", ccNameList);
		
		return "infra/user/member/pro/memberRegFormB";
	}
	
	@RequestMapping(value = "pwChangeFormC")
	public String pwChangFormC(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		return "infra/user/member/clients/pwChangeFormC";
	}
	
	@RequestMapping(value = "pwChangeFormB")
	public String pwChangFormB(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		return "infra/user/member/pro/pwChangeFormB";
	}

	@RequestMapping(value = "xdminLoginForm")
	public String xdminLoginForm() throws Exception {
		return "infra/xdmin/member/xdminLoginForm";
	}
	
	@RequestMapping("excelDownload")
    public void excelDownload(MemberVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		//setSearch(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("Sheet1");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting	        
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"Seq", "이름", "이메일", "성별", "생일", "직업", "모바일", "등록일", "수정일"};

	        row = sheet.createRow(rowNum++);
	        
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getMmSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getMmName());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getMmEmail());
	        	
	            cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            if(list.get(i).getMmGender() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getMmGender()));
	            
	            cell = row.createCell(4);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(UtilDatetime.dateToString(list.get(i).getMmBod()));
	            
	            cell = row.createCell(5);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getMmJob() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getMmJob()));
	            
	            cell = row.createCell(6);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getMmpPhoneNumber());    
	            
	            cell = row.createCell(7);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getRegDateTime() != null) cell.setCellValue(UtilDatetime.dateTimeToString(list.get(i).getRegDateTime()));
	            
	            cell = row.createCell(8);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getModDateTime() != null) cell.setCellValue(UtilDatetime.dateTimeToString(list.get(i).getModDateTime()));
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
}
