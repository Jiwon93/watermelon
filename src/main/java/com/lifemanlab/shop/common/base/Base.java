package com.lifemanlab.shop.common.base;

import java.util.Date;

public class Base {
	
	
	// uploaded
	private String tableName;
	
	private String seq;
	private Integer type;
	private Integer defaultNy;
	private Integer sort;
	private String path;
	private String originalName;
	private String uuidName;
	private String ext;
	private long size;
	private Integer delNy;
	private String pseq;
	
	// ccg
	private String ccgSeq;
	private String ccgName;
	private Integer ccgOrder;
	private Integer ccgUseNy;
	private Integer ccgDelNy;
	private Integer ccCount;
	private String ccgNameEng;
	private Date ccgRegDatetime;
	private Date ccgModDatetime;
	private String codeGroup_ccgSeq;
	
	// cc
	private String ccSeq;
	private String ccName;
	
	//regmod
	private String regIp;
	private String regSeq;
	private String regId;
	private Integer regDeviceCd;
	private Date regDateTime;
	private Date regDateTimeSvr;
	private String modIp;
	private String modSeq;
	private String modId;
	private Integer modDeviceCd;
	private Date modDateTime;
	private Date modDateTimeSvr;
////////////////////////////////////////
	
	//uploaded
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getDefaultNy() {
		return defaultNy;
	}
	public void setDefaultNy(Integer defaultNy) {
		this.defaultNy = defaultNy;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
	}
	public long getSize() {
		return size;
	}
	public void setSize(long size) {
		this.size = size;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pSeq) {
		this.pseq = pSeq;
	}
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
	
	///////////////////////////////////////////////////////////
	public String getRegIp() {
		return regIp;
	}
	public void setRegIp(String regIp) {
		this.regIp = regIp;
	}
	public String getRegSeq() {
		return regSeq;
	}
	public void setRegSeq(String regSeq) {
		this.regSeq = regSeq;
	}
	public Integer getRegDeviceCd() {
		return regDeviceCd;
	}
	public void setRegDeviceCd(Integer regDeviceCd) {
		this.regDeviceCd = regDeviceCd;
	}
	public Date getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(Date regDateTime) {
		this.regDateTime = regDateTime;
	}
	public Date getRegDateTimeSvr() {
		return regDateTimeSvr;
	}
	public void setRegDateTimeSvr(Date regDateTimeSvr) {
		this.regDateTimeSvr = regDateTimeSvr;
	}
	public String getRegId() {
		return regId;
	}
	public void setRegId(String regId) {
		this.regId = regId;
	}
	public String getModIp() {
		return modIp;
	}
	public void setModIp(String modIp) {
		this.modIp = modIp;
	}
	public String getModSeq() {
		return modSeq;
	}
	public void setModSeq(String modSeq) {
		this.modSeq = modSeq;
	}
	public String getModId() {
		return modId;
	}
	public void setModId(String modId) {
		this.modId = modId;
	}
	public Integer getModDeviceCd() {
		return modDeviceCd;
	}
	public void setModDeviceCd(Integer modDeviceCd) {
		this.modDeviceCd = modDeviceCd;
	}
	public Date getModDateTime() {
		return modDateTime;
	}
	public void setModDateTime(Date modDateTime) {
		this.modDateTime = modDateTime;
	}
	public Date getModDateTimeSvr() {
		return modDateTimeSvr;
	}
	public void setModDateTimeSvr(Date modDateTimeSvr) {
		this.modDateTimeSvr = modDateTimeSvr;
	}
	public String getCodeGroup_ccgSeq() {
		return codeGroup_ccgSeq;
	}
	public void setCodeGroup_ccgSeq(String codeGroup_ccgSeq) {
		this.codeGroup_ccgSeq = codeGroup_ccgSeq;
	}
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
	
	
	
}
