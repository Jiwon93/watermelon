package com.lifemanlab.shop.modules.member;

import java.sql.Date;

public class Member {
	
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
///////////////////////////////////////////////
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
	
	
}
