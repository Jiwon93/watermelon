package com.lifemanlab.shop.modules.item;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@RequestMapping(value = "/item/")
@SessionAttributes({"dtoBk", "tid"}) //dto, tid 를 세션에 올림
public class ItemController {
	
	@Autowired
	ItemServiceImpl service;
	
	//판매목록 리스트(관리자)
	@RequestMapping(value = "itemList")
	public String itemList(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Item> list = service.selectList(vo);
		model.addAttribute("list", list);
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		return "infra/xdmin/item/itemList";
	}
	
	
	//구매목록 리스트(관리자)
	@RequestMapping(value = "itemMenu")
	public String itemMenu(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		//List<Item> list = service.selectList(vo);
		//model.addAttribute("list", list);
		List<Item> productList = service.productList(vo);
		model.addAttribute("productList", productList);
		return "infra/user/item/itemMenu";
	}
	
	@RequestMapping(value = "itemMenuView")
	public String itemMenuView(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		
		Item item = service.selectOne(vo);
		System.out.println("controller item: " + item);
		model.addAttribute("item", item);
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
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
		service.productOptionReg(dto);
		vo.setItemSeq(dto.getItemSeq());
		dto.setMember_mmSeq(dto.getMmSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/item/saleManage";
	}
	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "itemUpdt")
	public String itemUpdt(ItemVo vo, Item dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/item/saleManage";
	}
	
	@RequestMapping(value = "itemUele")
	public String itemUele(ItemVo vo, Item dto, RedirectAttributes redirectAttributes) throws Exception {
		service.uelete(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/item/saleManage";
	}
	
	@RequestMapping(value = "itemDele")
	public String itemDele(ItemVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.delete(vo);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/item/saleManage";
	}
	
	@RequestMapping(value = "saleReg")
	public String saleReg() throws Exception {
		return "infra/user/member/pro/saleReg";
	}
	
	@RequestMapping(value = "saleRegForm")
	public String saleRegForm(Model model) throws Exception {
			
		List<Item> ccNameList = service.ccNameList();
		model.addAttribute("ccNameList", ccNameList);
		
		return "infra/user/member/pro/saleRegForm";
	}
	
	@RequestMapping(value = "purchaseHistory")
	public String purchaseHistory(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Item> purchaseItem = service.selectPurchaseHistory(vo);
		model.addAttribute(purchaseItem);
		return "infra/user/member/clients/purchaseHistory";
	}
	
	@RequestMapping(value = "saleManage")
	public String saleManage(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Item> saleItem = service.selectSaleManage(vo);
		model.addAttribute("saleItem", saleItem);
		return "infra/user/member/pro/saleManage";
	}
	
	/*
	//카카오페이
	@ModelAttribute("dtoBk")
	public Item setEmptyBooking() {  //빈 dto를 만들어줘야 세션 오류 안남
		return new Item();
	}

    //카카오페이
	@ResponseBody
	@RequestMapping(value="kakaopayReady")
	public KakaopayReady payReady (@ModelAttribute("dtoBk") Item dto, Model model) throws Exception {
		 
		KakaopayReady kakaopayReady = service.payReady(dto);
		model.addAttribute("tid", kakaopayReady.getTid());

		return kakaopayReady;
	}
	
	@RequestMapping(value="kakaopayApproval")
	public String payCompleted(@RequestParam("pg_token") String pgToken, @ModelAttribute("tid") String tid,  @ModelAttribute("dtoBk") Item dto,  Model model, HttpSession httpSession,  Movie dto1) throws Exception {
		
		// 카카오 결제 요청하기
		KakaoPayApproval kakaoPayApproval = service.payApprove(tid, pgToken, dto);
		
   //return된 객체를 map에 매핑
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> map = objectMapper.convertValue(kakaoPayApproval, Map.class);
		
		for(String key : map.keySet()) {
			String value = String.valueOf(map.get(key));
			System.out.println("[key]: " + key + ", [value]: " + value);
		}
		
		Map<String, Object> amount = new HashMap<String, Object>();
		amount = (Map<String, Object>) map.get("amount");
		
		for (String key : amount.keySet()) {
			String value = String.valueOf(amount.get(key));
			System.out.println("[key]: " + key + ", [value]: " + value);
		}

		//결제 후 db에 insert
		//dto 에 받아온 정보  set
		dto.setItTitle(map.get("item_name").toString());
		dto.setItemSeq(map.get("item_code").toString());
		dto.setItemPrice(amount.get("total").toString());

		dto.setMmSeq((String)httpSession.getAttribute("sessSeq"));
		Item booking = (Item) httpSession.getAttribute("dtoBk");
		//결제 정보 insert
		service.insertBooking(dto);
		dto.setTdbkSeq(dto.getTdbkSeq());
		
		for(int i = 0; i < booking.getTdbsSeatNums().length; i++) {
			dto.setTdbsSeatNum(booking.getTdbsSeatNums()[i]);
			service.insertBookingSeat(dto);
		}
		
		Item result = service.selectListAfterPay(dto);
		model.addAttribute("result", result);
			
		return "infra/booking/user/bookingResult";
	}
	
	// 결제 취소시 실행 url 
	@GetMapping("kakaopayCancel")
	public String payCancel() {
		return "redirect:/timetable/choiceMovie";
	}
    
	// 결제 실패시 실행 url    	
	@GetMapping("/kakaopayFail")
	public String payFail() {
		return "redirect:/timetable/choiceMovie"; 
	}
	*/
}
