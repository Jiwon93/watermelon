package com.lifemanlab.shop.modules.item;

import org.springframework.web.multipart.MultipartFile;

import com.lifemanlab.shop.common.base.Base;

public class Item extends Base {
	
	private String itemSeq;
	private String member_mmSeq;
	private String mmSeq;
	private String itTitle;
	private String itServiceDetail;
	private String itCancelRefund;
	private String itInquiry;
	private String mmNickname;
	private Integer category1;
	private Integer category2;
	private Integer skillLevel;
	private Integer teamSize;
	private Integer serviceCategory;
	private Integer residency;
	private Integer developLanguage;
	private String procedure;
	private String clientPrepare;
	
	//구매등록 추가 옵션
	private String itopSeq;
	private Integer itemDiv;
	private Integer responsiveWeb;
	private Integer contentUpload;
	private Integer sourceCode;
	private Integer design;
	private Integer functionPlus;
	private Integer pagePlus;
	private Integer quickWork;
	private Integer plusMod;
	private String item_itemSeq;
	private String purchase_purSeq;
	private String itemPriceTitle;
	private String itemPriceDetail;
	private String numberOfPage;
	private String workPeriod;
	private String numberOfMod;
	private String itemPrice;
	
	// 이미지 업로드
	private MultipartFile[] uploadImg;
	private Integer uploadImgType;	
	private Integer uploadImgMaxNumber;
	private String[] uploadImgDeleteSeq;
	private String[] uploadImgDeletePathFile;	
	
	private MultipartFile[] uploadFile;
	private Integer uploadFileType;
	private Integer uploadFileMaxNumber;
	private String[] uploadFileDeleteSeq;
	private String[] uploadFileDeletePathFile;
//////////////////////////////////////////////
	public String getItemSeq() {
		return itemSeq;
	}
	public void setItemSeq(String itemSeq) {
		this.itemSeq = itemSeq;
	}
	public String getMember_mmSeq() {
		return member_mmSeq;
	}
	public void setMember_mmSeq(String member_mmSeq) {
		this.member_mmSeq = member_mmSeq;
	}
	public String getItTitle() {
		return itTitle;
	}
	public void setItTitle(String itTitle) {
		this.itTitle = itTitle;
	}
	public String getItServiceDetail() {
		return itServiceDetail;
	}
	public void setItServiceDetail(String itServiceDetail) {
		this.itServiceDetail = itServiceDetail;
	}
	public String getItCancelRefund() {
		return itCancelRefund;
	}
	public void setItCancelRefund(String itCancelRefund) {
		this.itCancelRefund = itCancelRefund;
	}
	public String getItInquiry() {
		return itInquiry;
	}
	public void setItInquiry(String itInquiry) {
		this.itInquiry = itInquiry;
	}
	public String getMmNickname() {
		return mmNickname;
	}
	public void setMmNickname(String mmNickname) {
		this.mmNickname = mmNickname;
	}
	public Integer getCategory1() {
		return category1;
	}
	public void setCategory1(Integer category1) {
		this.category1 = category1;
	}
	public Integer getCategory2() {
		return category2;
	}
	public void setCategory2(Integer category2) {
		this.category2 = category2;
	}
	public Integer getSkillLevel() {
		return skillLevel;
	}
	public void setSkillLevel(Integer skillLevel) {
		this.skillLevel = skillLevel;
	}
	public Integer getTeamSize() {
		return teamSize;
	}
	public void setTeamSize(Integer teamSize) {
		this.teamSize = teamSize;
	}
	public Integer getServiceCategory() {
		return serviceCategory;
	}
	public void setServiceCategory(Integer serviceCategory) {
		this.serviceCategory = serviceCategory;
	}
	public Integer getResidency() {
		return residency;
	}
	public void setResidency(Integer residency) {
		this.residency = residency;
	}
	public Integer getDevelopLanguage() {
		return developLanguage;
	}
	public void setDevelopLanguage(Integer developLanguage) {
		this.developLanguage = developLanguage;
	}
	public String getClientPrepare() {
		return clientPrepare;
	}
	public void setClientPrepare(String clientPrepare) {
		this.clientPrepare = clientPrepare;
	}
	
	public String getItopSeq() {
		return itopSeq;
	}
	public void setItopSeq(String itopSeq) {
		this.itopSeq = itopSeq;
	}
	public Integer getItemDiv() {
		return itemDiv;
	}
	public void setItemDiv(Integer itemDiv) {
		this.itemDiv = itemDiv;
	}
	public Integer getResponsiveWeb() {
		return responsiveWeb;
	}
	public void setResponsiveWeb(Integer responsiveWeb) {
		this.responsiveWeb = responsiveWeb;
	}
	public Integer getContentUpload() {
		return contentUpload;
	}
	public void setContentUpload(Integer contentUpload) {
		this.contentUpload = contentUpload;
	}
	public Integer getSourceCode() {
		return sourceCode;
	}
	public void setSourceCode(Integer sourceCode) {
		this.sourceCode = sourceCode;
	}
	public Integer getDesign() {
		return design;
	}
	public void setDesign(Integer design) {
		this.design = design;
	}
	public Integer getFunctionPlus() {
		return functionPlus;
	}
	public void setFunctionPlus(Integer functionPlus) {
		this.functionPlus = functionPlus;
	}
	public Integer getPagePlus() {
		return pagePlus;
	}
	public void setPagePlus(Integer pagePlus) {
		this.pagePlus = pagePlus;
	}
	public Integer getQuickWork() {
		return quickWork;
	}
	public void setQuickWork(Integer quickWork) {
		this.quickWork = quickWork;
	}
	public Integer getPlusMod() {
		return plusMod;
	}
	public void setPlusMod(Integer plusMod) {
		this.plusMod = plusMod;
	}
	public String getItem_itemSeq() {
		return item_itemSeq;
	}
	public void setItem_itemSeq(String item_itemSeq) {
		this.item_itemSeq = item_itemSeq;
	}
	public String getPurchase_purSeq() {
		return purchase_purSeq;
	}
	public void setPurchase_purSeq(String purchase_purSeq) {
		this.purchase_purSeq = purchase_purSeq;
	}
	public String getItemPriceTitle() {
		return itemPriceTitle;
	}
	public void setItemPriceTitle(String itemPriceTitle) {
		this.itemPriceTitle = itemPriceTitle;
	}
	public String getItemPriceDetail() {
		return itemPriceDetail;
	}
	public void setItemPriceDetail(String itemPriceDetail) {
		this.itemPriceDetail = itemPriceDetail;
	}
	public String getNumberOfPage() {
		return numberOfPage;
	}
	public void setNumberOfPage(String numberOfPage) {
		this.numberOfPage = numberOfPage;
	}
	public String getWorkPeriod() {
		return workPeriod;
	}
	public void setWorkPeriod(String workPeriod) {
		this.workPeriod = workPeriod;
	}
	public String getNumberOfMod() {
		return numberOfMod;
	}
	public void setNumberOfMod(String numberOfMod) {
		this.numberOfMod = numberOfMod;
	}
	public String getProcedure() {
		return procedure;
	}
	public void setProcedure(String procedure) {
		this.procedure = procedure;
	}
	public String getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}
	public String getMmSeq() {
		return mmSeq;
	}
	public void setMmSeq(String mmSeq) {
		this.mmSeq = mmSeq;
	}
	public MultipartFile[] getUploadImg() {
		return uploadImg;
	}
	public void setUploadImg(MultipartFile[] uploadImg) {
		this.uploadImg = uploadImg;
	}
	public Integer getUploadImgType() {
		return uploadImgType;
	}
	public void setUploadImgType(Integer uploadImgType) {
		this.uploadImgType = uploadImgType;
	}
	public Integer getUploadImgMaxNumber() {
		return uploadImgMaxNumber;
	}
	public void setUploadImgMaxNumber(Integer uploadImgMaxNumber) {
		this.uploadImgMaxNumber = uploadImgMaxNumber;
	}
	public String[] getUploadImgDeleteSeq() {
		return uploadImgDeleteSeq;
	}
	public void setUploadImgDeleteSeq(String[] uploadImgDeleteSeq) {
		this.uploadImgDeleteSeq = uploadImgDeleteSeq;
	}
	public String[] getUploadImgDeletePathFile() {
		return uploadImgDeletePathFile;
	}
	public void setUploadImgDeletePathFile(String[] uploadImgDeletePathFile) {
		this.uploadImgDeletePathFile = uploadImgDeletePathFile;
	}
	public MultipartFile[] getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile[] uploadFile) {
		this.uploadFile = uploadFile;
	}
	public Integer getUploadFileType() {
		return uploadFileType;
	}
	public void setUploadFileType(Integer uploadFileType) {
		this.uploadFileType = uploadFileType;
	}
	public Integer getUploadFileMaxNumber() {
		return uploadFileMaxNumber;
	}
	public void setUploadFileMaxNumber(Integer uploadFileMaxNumber) {
		this.uploadFileMaxNumber = uploadFileMaxNumber;
	}
	public String[] getUploadFileDeleteSeq() {
		return uploadFileDeleteSeq;
	}
	public void setUploadFileDeleteSeq(String[] uploadFileDeleteSeq) {
		this.uploadFileDeleteSeq = uploadFileDeleteSeq;
	}
	public String[] getUploadFileDeletePathFile() {
		return uploadFileDeletePathFile;
	}
	public void setUploadFileDeletePathFile(String[] uploadFileDeletePathFile) {
		this.uploadFileDeletePathFile = uploadFileDeletePathFile;
	}
	
	
}
