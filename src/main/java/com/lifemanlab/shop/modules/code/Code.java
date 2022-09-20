package com.lifemanlab.shop.modules.code;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import com.lifemanlab.shop.common.base.Base;

public class Code extends Base {
	
	private String ccSeq;
	private String ccName;
	private String codeGroup_ccgSeq;
	private Integer ccOrder;
	private Integer ccUseNy;
	private Integer ccDelNy;
	private String ccgName;
	private String ccNameEng;
	private Date ccRegDatetime;
	private Date ccModDatetime;
/////////////////////////////////////////////////
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
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
	public String getCodeGroup_ccgSeq() {
		return codeGroup_ccgSeq;
	}
	public void setCodeGroup_ccgSeq(String codeGroup_ccgSeq) {
		this.codeGroup_ccgSeq = codeGroup_ccgSeq;
	}
	public Integer getCcOrder() {
		return ccOrder;
	}
	public void setCcOrder(Integer ccOrder) {
		this.ccOrder = ccOrder;
	}
	public Integer getCcUseNy() {
		return ccUseNy;
	}
	public void setCcUseNy(Integer ccUseNy) {
		this.ccUseNy = ccUseNy;
	}
	public Integer getCcDelNy() {
		return ccDelNy;
	}
	public void setCcDelNy(Integer ccDelNy) {
		this.ccDelNy = ccDelNy;
	}
	public String getCcgName() {
		return ccgName;
	}
	public void setCcgName(String ccgName) {
		this.ccgName = ccgName;
	}
	public String getCcNameEng() {
		return ccNameEng;
	}
	public void setCcNameEng(String ccNameEng) {
		this.ccNameEng = ccNameEng;
	}
	public Date getCcRegDatetime() {
		return ccRegDatetime;
	}
	public void setCcRegDatetime(Date ccRegDatetime) {
		this.ccRegDatetime = ccRegDatetime;
	}
	public Date getCcModDatetime() {
		return ccModDatetime;
	}
	public void setCcModDatetime(Date ccModDatetime) {
		this.ccModDatetime = ccModDatetime;
	}
	
	

}
