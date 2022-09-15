package com.lifemanlab.shop.modules.codegroup;

import java.sql.Date;

public class CodeGroup {
	
	private String ccgSeq;
	private String ccgName;
	private Integer ccgOrder;
	private Integer ccgUseNy;
	private Integer ccgDelNy;
	private Integer ccCount;
	private String ccgNameEng;
	private Date ccgRegDatetime;
	private Date ccgModDatetime;
////////////////////////////////////////
	public String getCcgSeq() {
		return ccgSeq;
	}
	public void setCcgSeq(String ccgSeq) {
		this.ccgSeq = ccgSeq;
	}
	public String getCcgName() {
		return ccgName;
	}
	public void setCcgName(String ccgName) {
		this.ccgName = ccgName;
	}
	public Integer getCcgOrder() {
		return ccgOrder;
	}
	public void setCcgOrder(Integer ccgOrder) {
		this.ccgOrder = ccgOrder;
	}
	public Integer getCcgUseNy() {
		return ccgUseNy;
	}
	public void setCcgUseNy(Integer ccgUseNy) {
		this.ccgUseNy = ccgUseNy;
	}
	public Integer getCcgDelNy() {
		return ccgDelNy;
	}
	public void setCcgDelNy(Integer ccgDelNy) {
		this.ccgDelNy = ccgDelNy;
	}
	public Integer getCcCount() {
		return ccCount;
	}
	public void setCcCount(Integer ccCount) {
		this.ccCount = ccCount;
	}
	public String getCcgNameEng() {
		return ccgNameEng;
	}
	public void setCcgNameEng(String ccgNameEng) {
		this.ccgNameEng = ccgNameEng;
	}
	public Date getCcgRegDatetime() {
		return ccgRegDatetime;
	}
	public void setCcgRegDatetime(Date ccgRegDatetime) {
		this.ccgRegDatetime = ccgRegDatetime;
	}
	public Date getCcgModDatetime() {
		return ccgModDatetime;
	}
	public void setCcgModDatetime(Date ccgModDatetime) {
		this.ccgModDatetime = ccgModDatetime;
	}
	
	
}
