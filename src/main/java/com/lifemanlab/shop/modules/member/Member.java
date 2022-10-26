package com.lifemanlab.shop.modules.member;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import com.lifemanlab.shop.common.base.Base;

public class Member extends Base{
	
	//공통코드
	private String ccSeq;
	private String ccName;
	
	//member
	private String mmSeq;
	private String mmName;
	private String mmNickname;
	private String mmEmail;
	private Integer mmEmailSelect;
	private String mmPw;
	private Date mmBod;
	private Integer mmGender;
	private String mmZip;
	private String mmAddress1;
	private String mmAddress2;
	private Integer mmDelNy;
	private Integer mmRank;
	private Integer mmJob;
	private Integer	mmInterest;
	private Integer mmSpecial;
	private Integer mmDetail;
	private Integer mmTechnique;
	private Integer mmCareer;
	private Integer mmWishPay;
	private Integer mmWorkTime;
	private String mmIntroduce;
	private Integer mmCash;
	private String mmpPhoneNumber;
	private String mmpSeq;
	private Integer mmpDiv;
	private String member_mmSeq;
	private Integer mmpDefaultNy;
	private String sessSeq;
	
	//상품
	private String itTitle;
	private String itemPrice;
	private String itemSeq;
	private String item_itemSeq;
	
	
	private MultipartFile[] mmUploadedProfileImage;
	private MultipartFile[] mmUploadedImage;
	private Integer uploadImgMaxNumber;
	private MultipartFile[] mmUploadedFile;
///////////////////////////////////////////////
	
	//공통코드
	public String getCcSeq() {
		return ccSeq;
	}
	public void setCcSeq(String ccSeq) {
		this.ccSeq = ccSeq;
	}
	public String getCcName() {
		return ccName;
	}
	public void setCcName(String ccName) {
		this.ccName = ccName;
	}

	//member
	public String getMmSeq() {
		return mmSeq;
	}
	public void setMmSeq(String mmSeq) {
		this.mmSeq = mmSeq;
	}
	public String getMmName() {
		return mmName;
	}
	public void setMmName(String mmName) {
		this.mmName = mmName;
	}
	public String getMmNickname() {
		return mmNickname;
	}
	public void setMmNickname(String mmNickname) {
		this.mmNickname = mmNickname;
	}
	public String getMmEmail() {
		return mmEmail;
	}
	public void setMmEmail(String mmEmail) {
		this.mmEmail = mmEmail;
	}
	public Integer getMmEmailSelect() {
		return mmEmailSelect;
	}
	public void setMmEmailSelect(Integer mmEmailSelect) {
		this.mmEmailSelect = mmEmailSelect;
	}
	public String getMmPw() {
		return mmPw;
	}
	public void setMmPw(String mmPw) {
		this.mmPw = mmPw;
	}
	public Date getMmBod() {
		return mmBod;
	}
	public void setMmBod(Date mmBod) {
		this.mmBod = mmBod;
	}
	public Integer getMmGender() {
		return mmGender;
	}
	public void setMmGender(Integer mmGender) {
		this.mmGender = mmGender;
	}
	public String getMmZip() {
		return mmZip;
	}
	public void setMmZip(String mmZip) {
		this.mmZip = mmZip;
	}
	public String getMmAddress1() {
		return mmAddress1;
	}
	public void setMmAddress1(String mmAddress1) {
		this.mmAddress1 = mmAddress1;
	}
	public String getMmAddress2() {
		return mmAddress2;
	}
	public void setMmAddress2(String mmAddress2) {
		this.mmAddress2 = mmAddress2;
	}
	public Integer getMmDelNy() {
		return mmDelNy;
	}
	public void setMmDelNy(Integer mmDelNy) {
		this.mmDelNy = mmDelNy;
	}
	public Integer getMmRank() {
		return mmRank;
	}
	public void setMmRank(Integer mmRank) {
		this.mmRank = mmRank;
	}
	public Integer getMmJob() {
		return mmJob;
	}
	public void setMmJob(Integer mmJob) {
		this.mmJob = mmJob;
	}
	public Integer getMmInterest() {
		return mmInterest;
	}
	public void setMmInterest(Integer mmInterest) {
		this.mmInterest = mmInterest;
	}
	public Integer getMmSpecial() {
		return mmSpecial;
	}
	public void setMmSpecial(Integer mmSpecial) {
		this.mmSpecial = mmSpecial;
	}
	public Integer getMmDetail() {
		return mmDetail;
	}
	public void setMmDetail(Integer mmDetail) {
		this.mmDetail = mmDetail;
	}
	public Integer getMmTechnique() {
		return mmTechnique;
	}
	public void setMmTechnique(Integer mmTechnique) {
		this.mmTechnique = mmTechnique;
	}
	public Integer getMmCareer() {
		return mmCareer;
	}
	public void setMmCareer(Integer mmCareer) {
		this.mmCareer = mmCareer;
	}
	public Integer getMmWishPay() {
		return mmWishPay;
	}
	public void setMmWishPay(Integer mmWishPay) {
		this.mmWishPay = mmWishPay;
	}
	public Integer getMmWorkTime() {
		return mmWorkTime;
	}
	public void setMmWorkTime(Integer mmWorkTime) {
		this.mmWorkTime = mmWorkTime;
	}
	public String getMmIntroduce() {
		return mmIntroduce;
	}
	public void setMmIntroduce(String mmIntroduce) {
		this.mmIntroduce = mmIntroduce;
	}
	public Integer getMmCash() {
		return mmCash;
	}
	public void setMmCash(Integer mmCash) {
		this.mmCash = mmCash;
	}
	public String getMmpPhoneNumber() {
		return mmpPhoneNumber;
	}
	public void setMmpPhoneNumber(String mmpPhoneNumber) {
		this.mmpPhoneNumber = mmpPhoneNumber;
	}
	public String getMmpSeq() {
		return mmpSeq;
	}
	public void setMmpSeq(String mmpSeq) {
		this.mmpSeq = mmpSeq;
	}
	public Integer getMmpDiv() {
		return mmpDiv;
	}
	public void setMmpDiv(Integer mmpDiv) {
		this.mmpDiv = mmpDiv;
	}
	public String getMember_mmSeq() {
		return member_mmSeq;
	}
	public void setMember_mmSeq(String member_mmSeq) {
		this.member_mmSeq = member_mmSeq;
	}
	public Integer getMmpDefaultNy() {
		return mmpDefaultNy;
	}
	public void setMmpDefaultNy(Integer mmpDefaultNy) {
		this.mmpDefaultNy = mmpDefaultNy;
	}
	public String getSessSeq() {
		return sessSeq;
	}
	public void setSessSeq(String sessSeq) {
		this.sessSeq = sessSeq;
	}
	public MultipartFile[] getMmUploadedProfileImage() {
		return mmUploadedProfileImage;
	}
	public void setMmUploadedProfileImage(MultipartFile[] mmUploadedProfileImage) {
		this.mmUploadedProfileImage = mmUploadedProfileImage;
	}
	public MultipartFile[] getMmUploadedImage() {
		return mmUploadedImage;
	}
	public void setMmUploadedImage(MultipartFile[] mmUploadedImage) {
		this.mmUploadedImage = mmUploadedImage;
	}
	public MultipartFile[] getMmUploadedFile() {
		return mmUploadedFile;
	}
	public void setMmUploadedFile(MultipartFile[] mmUploadedFile) {
		this.mmUploadedFile = mmUploadedFile;
	}
	public Integer getUploadImgMaxNumber() {
		return uploadImgMaxNumber;
	}
	public void setUploadImgMaxNumber(Integer uploadImgMaxNumber) {
		this.uploadImgMaxNumber = uploadImgMaxNumber;
	}
	public String getItTitle() {
		return itTitle;
	}
	public void setItTitle(String itTitle) {
		this.itTitle = itTitle;
	}
	public String getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}
	public String getItemSeq() {
		return itemSeq;
	}
	public void setItemSeq(String itemSeq) {
		this.itemSeq = itemSeq;
	}
	public String getItem_itemSeq() {
		return item_itemSeq;
	}
	public void setItem_itemSeq(String item_itemSeq) {
		this.item_itemSeq = item_itemSeq;
	}
	
	
	
}
